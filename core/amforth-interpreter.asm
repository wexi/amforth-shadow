; the inner interpreter.

DO_COLON:
	push xh
	push xl			; PUSH IP
	movw xh:xl, wh:wl
	adiw xh:xl, 1
DO_NEXT:
	brts DO_INTERRUPT
DO_NEXTT:
	movw zh:zl, xh:xl	; READ IP
	readflashcell wl, wh
	adiw xh:xl, 1		; INC IP

DO_EXECUTE:
	movw zh:zl, wh:wl
	readflashcell temp0,temp1
	movw zh:zl, temp1:temp0
	ijmp

DO_INTERRUPT:
	; here we deal with soft interrupts
	clt
	ldiw	z, intbuf
	ld	temp0, z	; int prog addr
	
; crude yet efficient queue (output) if having low occupancy
	
.macro	out_buf
	ldd	temp1, z+@1
	std	z+@0, temp1
	tst	temp1
	breq 	out_cur
.endmacro

ON_INTERRUPT:
	in temp2, SREG		; save unknown I-bit
	cli			; no hard int-s when handling queue
	out_buf 0,1
	ori	temp2, $40	; set T bit pos to interrupt forth
	out_buf 1,2
	out_buf 2,3
	out_buf 3,4
	out_buf 4,5
	out_buf 5,6
	out_buf 6,7
	out_buf 7,8		; intbuf+8 always zero

out_cur:
	out 	SREG, temp2	; restore I bit, T set if another swi pending
	
	push	xh		; interrupted task cont point
	push	xl
	
	ldiw	z, intvec
	add	zl, temp0
	adc	zh, temp1
	ld	xl, z+		; ISR IP
	ld	xh, z+
	
	movw	zh:zl, uph:upl
	cpi	zl, low(ram_user1)
	brne	DO_SWT		; ISRs should run in main task
	cpi	zh, high(ram_user1)
	breq	DO_ISR

;	task-switch, leave resume to lib/tasks.frt
 
DO_SWT:	savetos			; rp@
	in	tosl, SPL
	in	tosh, SPH
	savetos			; sp@ 8 !u
	std	z+8, yl
	std	z+9, yh

;	task-resume main, exec ISR first
	
	ldiw	z, ram_user1
	ldd	tosl, z+8	; 8 @u
	ldd	tosh, z+9
	movw	yh:yl, tosh:tosl ; sp!
	loadtos
	in	temp0, SREG	; rp!
	cli
	out	SPL, tosl
	out	SPH, tosh
	out	SREG, temp0
	loadtos
	movw	uph:upl, zh:zl

DO_ISR:	adiw	xh:xl, 1	; skip ISR DO-COLON
	jmp_	DO_NEXTT	; makes ISR first word uninterruptible
