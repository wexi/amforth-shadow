;;; usart transmitter interrupt service

	.set 	pc_ = pc
	.org 	UDREaddr
	jmp_ 	usart_tx_isr
	.org 	pc_

#ifdef TXR_SIZE
	.equ 	USART_TX_SIZ = TXR_SIZE
#else
	.equ 	USART_TX_SIZ = 100
#endif

	.dseg
usart_tx_inp:			;buffer input pointer
	.byte 2
usart_tx_out:			;buffer output pointer
	.byte 2
usart_tx_cnt:			;buffer capacity
	.byte 2
usart_tx_buf:			;buffer
	.byte 	USART_TX_SIZ

	.cseg
usart_tx_isr:
	push	xl
	in 	xl, SREG
	push 	xl
	
	lds	xl, USART_B	;disable transmit empty interrupts
	cbr	xl, bm_ENABLE_INT_TX
	sts	USART_B, xl
	sei			;now safe

	push	xh
	ldsw	X, usart_tx_cnt
	sbiw	xh:xl, 1
#ifdef	RTS_ENABLE
	IS_RTS_ON		;skip next instruction if RTS is ON
	sec
#endif
	brlo	usart_tx_exit
	stsw	usart_tx_cnt, X
	
	push 	zl
	push 	zh
	ldsw	Z, usart_tx_out
	ld	xl, Z+
	sts	USART_DATA, xl
	cpi	zl, low(usart_tx_buf+USART_TX_SIZ)
	brne	usart_tx_wrap
	cpi	zh, high(usart_tx_buf+USART_TX_SIZ)
	brne	usart_tx_wrap
	ldiw	Z, usart_tx_buf
usart_tx_wrap:	
	stsw	usart_tx_out, Z
	pop 	zh
	pop 	zl

usart_tx_resume:
	lds 	xl, USART_B
	sbr 	xl, bm_ENABLE_INT_TX
	sts 	USART_B, xl

usart_tx_exit:
	pop	xh
	pop 	xl
	out 	SREG,xl
	pop 	xl
	reti

#ifdef	RTS_ENABLE
usart_rts_isr:			;RTS OFF→ON
	push 	xl
	in 	xl, SREG
	push 	xl
	push	xh

	ldsw	X, usart_tx_cnt
	sbiw	xh:xl, 1
	brsh	usart_tx_resume
	rjmp	usart_tx_exit
#endif	

; ( -- n ) return the number of char places in queue or -1 if the DTR is OFF
VE_TXQ_ISR:
	.dw 	$ff07
	.db 	"txq-isr",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_TXQ_ISR
XT_TXQ_ISR:
	.dw	PFA_TXQ_ISR
PFA_TXQ_ISR:
	savetos
#ifdef	DTR_ENABLE
	ldiw	TOS, -1
	IS_DTR_ON
	jmp_	DO_NEXT
#endif
	ldiw	TOS, USART_TX_SIZ
	in	temp0, SREG
	cli
	ldsw	Z, usart_tx_cnt
	out	SREG, temp0
	sub	tosl, zl
	sbc	tosh, zh
	jmp_	DO_NEXT

; ( c -- ) assuming the queue is not full!
XT_TXR_ISR:
	.dw	PFA_TXR_ISR
PFA_TXR_ISR:
	ldsw	Z, usart_tx_inp	;insert c into queue
	st	Z+, tosl
	cpi	zl, low(usart_tx_buf+USART_TX_SIZ)
	brne	PFA_TXR_ISR1
	cpi	zh, high(usart_tx_buf+USART_TX_SIZ)
	brne	PFA_TXR_ISR1
	ldiw	Z, usart_tx_buf
PFA_TXR_ISR1:
	stsw	usart_tx_inp, Z
	in	temp0, SREG
	cli
	ldsw	Z, usart_tx_cnt
	adiw	zh:zl, 1
	stsw	usart_tx_cnt, Z
#ifdef	RTS_ENABLE
	IS_RTS_ON
	rjmp	PFA_TXR_ISR2
#endif
	lds	temp1, USART_B
	sbr 	temp1, bm_ENABLE_INT_TX
	sts	USART_B, temp1
PFA_TXR_ISR2:	
	out	SREG, temp0
	loadtos
	jmp_	DO_NEXT

; called by +usart
XT_USART_INIT_TX_ISR:
	.dw	PFA_USART_INIT_TX_ISR
PFA_USART_INIT_TX_ISR:	
	ldiw	Z, usart_tx_buf
	in	temp0, SREG
	cli
	stsw	usart_tx_inp, Z
	stsw	usart_tx_out, Z
	stsw	usart_tx_cnt, ZERO
	lds	temp1, USART_B		;disable transmit empty interrupts
	cbr	temp1, bm_ENABLE_INT_TX
	sts	USART_B, temp1
	out	SREG, temp0 
#ifdef	RTS_ENABLE
	RTS_INIT
#endif
	jmp_	DO_NEXT	

