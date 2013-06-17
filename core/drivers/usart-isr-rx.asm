;;; usart receiver interrupt service

.set pc_ = pc
.org URXCaddr
  jmp_ usart_rx_isr
.org pc_

#ifdef RXR_SIZE
.equ usart_rx_siz = RXR_SIZE	;must be a power of 2
#else
.equ usart_rx_siz = 16
#endif
.equ usart_rx_msk = usart_rx_siz - 1
.equ usart_rx_off = usart_rx_siz - 2 ;≤ cnt: CTS_OFF 
.equ usart_rx_onn = usart_rx_siz / 2 ;≥ cnt: CTS_ON  
	
.dseg
usart_rx_inp: .byte 1
usart_rx_out: .byte 1
usart_rx_cnt: .byte 1
usart_rx_dat: .byte usart_rx_siz

.cseg
usart_rx_isr:
  push 	xl
  in 	xl, SREG
  push 	xl
  push 	xh
  push 	zl
  push 	zh

  lds	xh, USART_DATA		;clears interrupt
  lds	xl, usart_rx_cnt

#ifdef	CTS_ENABLE
  cpi	xl, usart_rx_off - 1
  brlo	usart_rx_isr_store
  CTS_OFF
#endif

usart_rx_isr_store:
  cpi	xl, usart_rx_siz
  brsh	usart_rx_isr_done	;overflow?
  inc	xl
  sts	usart_rx_cnt, xl
	
  lds	xl, usart_rx_inp
  ldiw	z, usart_rx_dat
  add	zl, xl
  adc	zh, zeroh
  st	z, xh
  inc	xl
  andi	xl, usart_rx_msk
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
XT_RXQ_ISR: _pfa_
  savetos
  lds	tosl, usart_rx_cnt
  clr	tosh
#ifdef	CTS_ENABLE
  IS_CTS_OFF
  rjmp	RXQ_ISR			;already ON 
  cpi	tosl, usart_rx_onn + 1
  brsh	RXQ_ISR
  CTS_ON			;cnt ≤ usart_rx_onn
#endif
RXQ_ISR:
  jmp_	DO_NEXT
	
; ( -- c ) assuming the queue is not empty!
XT_RXR_ISR: _pfa_
  savetos
  lds	temp0, usart_rx_out
  ldiw	z, usart_rx_dat
  add 	zl, temp0
  adc	zh, zeroh
  ld	tosl, z
  clr	tosh
  inc	temp0
  andi	temp0, usart_rx_msk
  sts	usart_rx_out, temp0

  in	temp0, SREG		;uninterruptible count dec
  cli
  lds	temp1, usart_rx_cnt
  dec	temp1
  sts	usart_rx_cnt, temp1
  out	SREG, temp0  
  jmp_	DO_NEXT

; called by +usart
XT_USART_INIT_RX_ISR: _pfa_
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
