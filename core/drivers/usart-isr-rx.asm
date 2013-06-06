;;; usart receiver interrupt service

.set pc_ = pc
.org URXCaddr
  jmp_ usart_rx_isr
.org pc_

.equ usart_rx_size = 16		;must be a power of 2
.equ usart_rx_resume = 9	;CTS reactivation if less than
.equ usart_rx_mask = usart_rx_size - 1
	
.dseg
usart_rx_in: .byte 1
usart_rx_out: .byte 1
usart_rx_data: .byte usart_rx_size

.cseg
usart_rx_isr:
  push 	xl
  in 	xl, SREG
  push 	xl
  push 	xh
  push 	zl
  push 	zh

  lds xh, USART_DATA
  ; optional: check for certain character(s) (e.g. CTRL-C)
  ; and trigger a soft interrupt instead of storing the
  ; charater into the input queue.
  lds	xl, usart_rx_in
  ldiw	z, usart_rx_data
  add	zl, xl
  adc	zh, zeroh
  st 	z, xh

  inc 	xl
  andi 	xl, usart_rx_mask
  sts 	usart_rx_in, xl

#ifdef	CTS_ENABLE
  lds	xh, usart_rx_out
  subi	xh, 2
  andi	xh, usart_rx_mask
  cp	xl, xh
  brne	usart_rx_isr_finish
  CTS_OFF  
#endif

usart_rx_isr_finish:
  pop	zh
  pop	zl
  pop	xh
  pop	xl
  out	SREG, xl
  pop	xl
  reti

; ( -- f ) true if rx not empty
XT_RXQ_ISR: .dw  pc + 1
  savetos
  lds	temp0, usart_rx_out
  lds	temp1, usart_rx_in
  movw	tosl, zerol
  cpse	temp0, temp1
  sbiw	tosl, 1
  jmp_	DO_NEXT

; ( -- c ) or if empty take next branch
XT_RXR_ISR: .dw  pc + 1
  lds	temp0, usart_rx_out
  lds	temp1, usart_rx_in
  cp	temp0, temp1
  brne	RXR_ISR1
  movw 	zl, xl			;empty rx queue
  readflashcell xl,xh		;take the branch
  jmp_	DO_NEXT
RXR_ISR1:
  adiw	xl, 1			;skip the branch
  ldiw	z, usart_rx_data
  add 	zl, temp0
  adc	zh, zeroh
  ld	tosl, z
  clr	tosh
  inc	temp0
  andi	temp0, usart_rx_mask
  sts	usart_rx_out, temp0
#ifdef	CTS_ENABLE
  IS_CTS_OFF			;skip next if CTS is OFF
  jmp_	DO_NEXT			;CTS is ON
  sub	temp1, temp0		;number of chars queued
  andi	temp1, usart_rx_mask
  cpi	temp1, usart_rx_resume
  brcc	RXR_ISR2
  CTS_ON
#endif
RXR_ISR2:
  jmp_	DO_NEXT

; ( -- ) called by +usart
XT_USART_INIT_RX_ISR: .dw pc + 1
  sts	usart_rx_in, zerol
  sts	usart_rx_out, zeroh
#ifdef	CTS_ENABLE
  CTS_ON
#endif	
  jmp_	DO_NEXT	
