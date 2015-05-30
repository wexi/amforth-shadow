;;; usart receiver interrupt service

	.set	pc_ = pc
	.org	URXCaddr
	jmp_	usart_rx_isr
	.org	pc_

#ifdef RXR_SIZE
	.equ 	USART_RX_SIZ = RXR_SIZE
#else
	.equ 	USART_RX_SIZ = 80
#endif
	.IF	USART_RX_SIZ > 255
	.MESSAGE 255 is largest buffer
	.ENDIF
	
	.equ 	USART_RX_OFF = USART_RX_SIZ - 4 ;CTS_OFF 
	.equ 	USART_RX_ONN = USART_RX_SIZ / 2 ;CTS_ON  
	
	.dseg
usart_rx_inp:			;buffer input index
	.byte 	1
usart_rx_out:			;buffer output index
	.byte 	1
usart_rx_cnt:			;buffer capacity
	.byte 	1
usart_rx_buf:			;buffer
	.byte 	USART_RX_SIZ

	.cseg
usart_rx_isr:
	push 	xl
	in 	xl, SREG
	push 	xl
	lds	xl, USART_DATA	;new character input
	push 	xh

#ifdef	DTR_ENABLE
	IS_DTR_ON
	rjmp	usart_rx_done	;terminal is down
#endif
	
	lds	xh, usart_rx_cnt
#ifdef	CTS_ENABLE
	cpi	xh, USART_RX_OFF - 1
	brlo	usart_rx_store
	CTS_OFF
#endif
usart_rx_store:
	cpi	xh, USART_RX_SIZ
	brsh	usart_rx_done	;buffer overflow?
	inc	xh
	sts	usart_rx_cnt, xh
	
	push 	zl
	push 	zh
	lds	xh, usart_rx_inp
	ldiw	Z, usart_rx_buf
	add	zl, xh
	adc	zh, zeroh
	st	Z, xl		;new char into buffer
	inc	xh
	cpi	xh, USART_RX_SIZ
	brlo	usart_rx_wrap
	clr	xh
usart_rx_wrap:
	sts	usart_rx_inp, xh
	pop	zh
	pop	zl

usart_rx_done:
	pop	xh
	pop	xl
	out	SREG, xl
	pop	xl
	reti
	
; ( -- cnt ) number of characters in queue
VE_RXQ_ISR:
	.dw 	$ff07
	.db 	"rxq-isr",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_RXQ_ISR
XT_RXQ_ISR:
	.dw 	PFA_RXQ_ISR
PFA_RXQ_ISR:		
	savetos
	mov	tosh, zeroh
	lds	tosl, usart_rx_cnt
	
#ifdef	CTS_ENABLE
	cpse	tosl,zerol
	jmp_	DO_NEXT
	IS_CTS_OFF
	jmp_	DO_NEXT
	CTS_ON			;rescue
#endif
	jmp_	DO_NEXT
	
; ( -- c ) assuming the queue is not empty!
XT_RXR_ISR:
	.dw	PFA_RXR_ISR	
PFA_RXR_ISR:	
	savetos
	lds	temp0, usart_rx_out
	ldiw	z, usart_rx_buf
	add 	zl, temp0
	adc	zh, zeroh
	ld	tosl, Z
	clr	tosh
	inc	temp0
	cpi	temp0, USART_RX_SIZ
	brlo	PFA_RXR_ISR1
	clr	temp0
PFA_RXR_ISR1:
	sts	usart_rx_out, temp0

	in	temp0, SREG	;uninterruptible count dec
	cli
	lds	temp1, usart_rx_cnt
	dec	temp1
	sts	usart_rx_cnt, temp1
#ifdef	CTS_ENABLE
	cpi	temp1, USART_RX_ONN
	brsh	PFA_RXR_ISR2
	CTS_ON
PFA_RXR_ISR2:
#endif	
	out	SREG, temp0  
	jmp_	DO_NEXT

; called by +usart
XT_USART_INIT_RX_ISR:
	.dw	PFA_USART_INIT_RX_ISR
PFA_USART_INIT_RX_ISR:	
	in	temp0, SREG
	cli
	sts	usart_rx_inp, zerol
	sts	usart_rx_out, zerol
	sts	usart_rx_cnt, zerol
	out	SREG, temp0  
#ifdef	CTS_ENABLE
	CTS_INIT
#endif
	jmp_	DO_NEXT	
