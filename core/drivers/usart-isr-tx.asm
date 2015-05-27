;;; usart transmitter interrupt service

	.set 	pc_ = pc
	.org 	UDREaddr
	jmp_ 	usart_tx_isr
	.org 	pc_

#ifdef TXR_SIZE
	.equ 	USART_TX_SIZ = TXR_SIZE
#else
	.equ 	USART_TX_SIZ = 64
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
	push	xh
	push 	zl
	push 	zh

	ldsw	X, usart_tx_cnt
	sbiw	xh:xl, 1
	
#ifdef	RTS_ENABLE
	IS_RTS_OFF		;skip next instruction if RTS is OFF
#endif
	brsh	usart_udre_next

usart_udre_halt:
	lds	zl, USART_B	;disable transmit empty interrupts
	cbr	zl, bm_ENABLE_INT_TX
	sts	USART_B, zl
	rjmp 	usart_udre_exit

#ifdef	RTS_ENABLE
usart_udre_resume:
	lds 	zl, USART_B
	sbr 	zl, bm_ENABLE_INT_TX
	sts 	USART_B, zl
#endif

usart_udre_next:
	stsw	usart_tx_cnt, X
	
	ldsw	Z, usart_tx_out
	ld	xl, Z+
	sts	USART_DATA, xl
	cpi	zl, low(usart_tx_buf+USART_TX_SIZ)
	brne	usart_udre_wrap
	cpi	zh, high(usart_tx_buf+USART_TX_SIZ)
	brne	usart_udre_wrap
	ldiw	Z, usart_tx_buf
usart_udre_wrap:	
	stsw	usart_tx_out, Z

usart_udre_exit:
	pop 	zh
	pop 	zl
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
	push 	zl
	push 	zh

	ldsw	X, usart_tx_cnt
	sbiw	xh:xl, 1
	brsh	usart_udre_resume
	rjmp	usart_udre_exit
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

