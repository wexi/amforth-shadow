; the inner interpreter.

DO_COLON:
	push	xh
	push	xl		;push return IP
	movw	xh:xl, wh:wl
	adiw	xh:xl, 1
DO_NEXT:
	brts	DO_NEXTT	;soft interrupts disabled?
	ldiw	Z, intbuf
	ld	temp0, Z
	cpse	temp0, zerol	;empty queue?
	rjmp	DO_INTERRUPT
DO_NEXTT:
	movw 	zh:zl, xh:xl	;read XT
	readflashcell wl, wh
	adiw 	xh:xl, 1	;inc IP

DO_EXECUTE:
	movw 	zh:zl, wh:wl
	readflashcell temp0,temp1
	movw 	zh:zl, temp1:temp0
	ijmp

DO_INTERRUPT:
	in_	temp2, SREG	;save I-bit
	cli			;no hard int-s when handling queue
	
; crude yet efficient queue (output) if having low occupancy

DO_QOUT:
	ldd	temp1, Z+1
	st	Z+, temp1
	cpse	temp1, zerol
	rjmp	DO_QOUT

	out_	SREG, temp2	;restore I-bit
	
	push	xh		;interrupted task cont point
	push	xl
	
	ldiw	z, intvec
	add	zl, temp0
	adc	zh, temp1	;temp1 = 0
	ld	xl, z+		;ISR IP
	ld	xh, z+
	
	movw	zh:zl, uph:upl
	cpi	zl, low(ram_user1)
	brne	DO_SWT		;ISRs should run in main task
	cpi	zh, high(ram_user1)
	breq	DO_ISR

;	task-switch, leave resume to lib/tasks.frt
 
DO_SWT:	savetos			;rp@
	in_	tosl, SPL
	in_	tosh, SPH
	savetos			;sp@ 8 !u
	std	z+8, yl
	std	z+9, yh

;	task-resume main, exec ISR first
	
	ldiw	z, ram_user1
	ldd	tosl, z+8	;8 @u
	ldd	tosh, z+9
	movw	yh:yl, tosh:tosl ;sp!
	loadtos
	in_	temp0, SREG	;rp!
	cli
	out_	SPL, tosl
	out_	SPH, tosh
	out_	SREG, temp0
	loadtos
	movw	uph:upl, zh:zl

DO_ISR:	adiw	xh:xl, 1	;skip ISR DO-COLON
	jmp_	DO_NEXTT	;makes ISR first word uninterruptible
