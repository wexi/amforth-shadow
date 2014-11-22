; the inner interpreter.

DO_COLON:
	push xh
	push xl			;push return IP
	movw xh:xl, wh:wl
	adiw xh:xl, 1
DO_NEXT:
	brts DO_INTERRUPT
DO_NEXTT:
	movw zh:zl, xh:xl	;read XT
	readflashcell wl, wh
	adiw xh:xl, 1		;inc IP

DO_EXECUTE:
	movw zh:zl, wh:wl
	readflashcell temp0,temp1
	movw zh:zl, temp1:temp0
	ijmp

DO_INTERRUPT:
	;here we deal with soft interrupts
	clt
	ldiw	z, intbuf
	ld	temp0, z	;int prog addr

ON_INTERRUPT:
	in_	temp2, SREG	;save unknown I-bit
	cli			;no hard int-s when handling queue
	
; crude yet efficient queue (output) if having low occupancy
	
.macro	out_buf
.if @0
	ldd	temp1, z+(@1-@0+1)
	std	z+(@1-@0), temp1
.if	@0 > 1
	tst	temp1
	breq 	out_cur
.endif
.if	@0 == @1
	ori	temp2, $40	;set T bit pos to interrupt forth further
.endif
	out_buf (@0-1),@1
.endif
.endmacro
	out_buf intsiz,intsiz

out_cur:
	out_	SREG, temp2	;restore I bit, T set if another swi pending
	
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
