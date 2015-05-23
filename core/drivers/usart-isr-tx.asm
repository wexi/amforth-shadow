;;; usart transmitter interrupt service

	.set 	pc_ = pc
	.org 	UDREaddr
	jmp_ 	usart_tx_isr
	.org 	pc_

#ifdef TXR_SIZE
	.equ 	USART_TX_SIZ = TXR_SIZE	;power of 2 and less than 257
#else
	.equ 	USART_TX_SIZ = 16
#endif
	.equ 	USART_TX_MSK = USART_TX_SIZ - 1

	.IF	USART_TX_SIZ > 256
	.MESSAGE 256 is largest buffer
	.ENDIF
	
	.dseg
usart_tx_inp:
	.byte 1
usart_tx_out:
	.byte 1
usart_tx_cnt:
	.byte 1
usart_tx_dat:
	.byte 	USART_TX_SIZ

	.cseg
usart_tx_isr:
	push	xl
	in 	xl, SREG
	push 	xl
	push 	zl
	push 	zh

	lds	xl, usart_tx_cnt
	dec	xl
	sts	usart_tx_cnt, xl
	
#ifdef	RTS_ENABLE
	IS_RTS_OFF
#endif
	brne	usart_udre_next

usart_udre_halt:
	lds	xl, USART_B		;disable transmit empty interrupts
	cbr	xl, bm_ENABLE_INT_TX
	sts	USART_B, xl
	rjmp 	usart_udre_exit

#ifdef	RTS_ENABLE
usart_udre_resume:
	lds 	xl, USART_B
	sbr 	xl, bm_ENABLE_INT_TX
	sts 	USART_B, xl
#endif

usart_udre_next:
	lds	xl, usart_tx_out
	ldiw	z, usart_tx_dat
	add	zl, xl
	adc	zh, zeroh
	inc	xl
	.IF	USART_TX_MSK < 255
	andi	xl, USART_TX_MSK
	.ENDIF
	sts	usart_tx_out, xl
	ld	xl, z
	sts	USART_DATA, xl

usart_udre_exit:
	pop 	zh
	pop 	zl
	pop 	xl
	out 	SREG,xl
	pop 	xl
	reti

#ifdef	RTS_ENABLE
usart_rts_isr:			;RTS OFF→ON
	push 	xl
	in 	xl, SREG
	push 	xl
	push 	zl
	push 	zh

	lds	xl, usart_tx_cnt
	tst	xl
	brne	usart_udre_resume
	rjmp	usart_udre_exit
#endif	

; ( -- n ) return the number of char places in queue or -1 if the DTR is OFF
VE_TXQ_ISR:
	.dw 	$ff07
	.db 	"txq-isr",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_TXQ_ISR
XT_TXQ_ISR: _pfa_
	savetos
#ifdef	DTR_ENABLE
	IS_DTR_OFF
	rjmp	TXQ_ISR
	ldiw	tos, -1
	jmp_	DO_NEXT
#endif
TXQ_ISR:	
	lds	temp0, usart_tx_cnt
	ldi	tosl, USART_TX_SIZ
	sub	tosl, temp0
	clr	tosh
	jmp_	DO_NEXT

; ( c -- ) assuming the queue is not full!
XT_TXR_ISR: _pfa_
	lds	temp0, usart_tx_inp	;insert c to queue
	ldiw	z, usart_tx_dat
	add 	zl, temp0
	adc	zh, zeroh
	st	z, tosl
	loadtos
	inc	temp0
	.IF	USART_TX_MSK < 255
	andi	temp0, USART_TX_MSK
	.ENDIF
	sts	usart_tx_inp, temp0

	in	temp0, SREG
	cli
	lds	temp1, usart_tx_cnt
	tst	temp1
#ifdef	RTS_ENABLE
	IS_RTS_OFF
#endif
	breq	TXR_ISR1		;first queue insertion?
	rjmp	TXR_ISR2		;active tx or RTS is OFF
TXR_ISR1:
	lds 	temp2, USART_B
	sbr 	temp2, bm_ENABLE_INT_TX
	sts 	USART_B, temp2		;force tx empty interrupt
	inc	temp1			;account for ghost char tx
TXR_ISR2:
	inc	temp1
	sts	usart_tx_cnt, temp1
	out	SREG, temp0  
	jmp_	DO_NEXT

; called by +usart
XT_USART_INIT_TX_ISR: _pfa_
	in	temp0, SREG
	cli
	sts	usart_tx_inp, zerol
	sts	usart_tx_out, zerol
	sts	usart_tx_cnt, zerol
	lds	temp1, USART_B		;disable transmit empty interrupts
	cbr	temp1, bm_ENABLE_INT_TX
	sts	USART_B, temp1
	out	SREG, temp0  
#ifdef	RTS_ENABLE
	RTS_INIT
#endif
	jmp_	DO_NEXT	

