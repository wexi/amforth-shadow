;;; usart driver, receiving

.set pc_ = pc
.org URXCaddr
  jmp_ usart_rx_isr
.org pc_

; sizes have to be powers of 2!
.equ usart_rx_size = $10
.equ usart_rx_mask = usart_rx_size - 1
.dseg
usart_rx_in: .byte 1
usart_rx_out: .byte 1
usart_rx_data: .byte usart_rx_size+2
.cseg

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; forth code:
; : rx-isr USART_DATA c@
;    usart_rx_data usart_rx_in c@ dup >r
;    + !
;    r> 1+ usart_rx_mask and usart_rx_in c!
; ;
; setup with
; ' rx-isr URXCaddr int!
usart_rx_isr:
  push xl
  in xl, SREG
  push xl
  push xh
  push zl
  push zh

  lds xh, USART_DATA
  ; optional: check for certain character(s) (e.g. CTRL-C)
  ; and trigger a soft interrupt instead of storing the
  ; charater into the input queue.
  lds xl,usart_rx_in
  ldi zl, low(usart_rx_data)
  ldi zh, high(usart_rx_data)
  add zl, xl
  adc zh, zeroh
  st Z, xh

  inc xl
  andi xl,usart_rx_mask

  sts usart_rx_in, xl

usart_rx_isr_finish:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG, xl
  pop xl
  reti

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_RX:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_RX
XT_USART_INIT_RX_ISR:
  .dw DO_COLON
PFA_USART_INIT_RX_ISR:          ; ( -- )
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart_rx_in
  .dw XT_STORE

  .dw XT_EXIT
