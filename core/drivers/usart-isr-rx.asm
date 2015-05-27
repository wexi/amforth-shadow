;;; usart receiver interrupt service

	.set	pc_ = pc
	.org	URXCaddr
	jmp_	usart_rx_isr
	.org	pc_

#ifdef RXR_SIZE
	.equ 	USART_RX_SIZ = RXR_SIZE	;must be a power of 2
#else
	.equ 	USART_RX_SIZ = 16
#endif
	.equ 	USART_RX_MSK = USART_RX_SIZ - 1
	.equ 	USART_RX_OFF = USART_RX_SIZ - 2 ;≤ cnt: CTS_OFF 
	.equ 	USART_RX_ONN = USART_RX_SIZ / 2 ;≥ cnt: CTS_ON  
	
	.IF	USART_RX_SIZ > 128
	.MESSAGE 128 is largest buffer
	.ENDIF
	
	.dseg
usart_rx_inp:
	.byte 	1
usart_rx_out:
	.byte 	1
usart_rx_cnt:
	.byte 	1
usart_rx_dat:
	.byte 	USART_RX_SIZ

	.cseg
usart_rx_isr:
	push 	xl
	in 	xl, SREG
	push 	xl
	push 	xh
	push 	zl
	push 	zh

	lds	xh, USART_DATA	;clears interrupt
	lds	xl, usart_rx_cnt

#ifdef	CTS_ENABLE
	cpi	xl, USART_RX_OFF - 1
	brlo	usart_rx_isr_store
	CTS_OFF
#endif

usart_rx_isr_store:
	cpi	xl, USART_RX_SIZ
	brsh	usart_rx_isr_done ;overflow?
	inc	xl
	sts	usart_rx_cnt, xl
	
	lds	xl, usart_rx_inp
	ldiw	z, usart_rx_dat
	add	zl, xl
	adc	zh, zeroh
	st	z, xh
	inc	xl
	andi	xl, USART_RX_MSK
	sts	usart_rx_inp, xl

usart_rx_isr_done:
	pop	zh
	pop	zl
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
	lds	tosl, usart_rx_cnt
	clr	tosh
#ifdef	CTS_ENABLE
	IS_CTS_OFF
	rjmp	PFA_RXQ_ISR1	;already ON 
	cpi	tosl, USART_RX_ONN + 1
	brsh	PFA_RXQ_ISR1
	CTS_ON			;cnt ≤ USART_RX_ONN
#endif
PFA_RXQ_ISR1:
	jmp_	DO_NEXT
	
; ( -- c ) assuming the queue is not empty!
XT_RXR_ISR:
	.dw	PFA_RXR_ISR	
PFA_RXR_ISR:	
	savetos
	lds	temp0, usart_rx_out
	ldiw	z, usart_rx_dat
	add 	zl, temp0
	adc	zh, zeroh
	ld	tosl, z
	clr	tosh
	inc	temp0
	andi	temp0, USART_RX_MSK
	sts	usart_rx_out, temp0

	in	temp0, SREG	;uninterruptible count dec
	cli
	lds	temp1, usart_rx_cnt
	dec	temp1
	sts	usart_rx_cnt, temp1
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
