;;; usart driver, receiving

; sizes have to be powers of 2!
.equ usart_rx_size = $10
.equ usart_rx_mask = usart_rx_size - 1
.dseg
usart_rx_data: .byte usart_rx_size+2
usart_rx_in: .byte 2
usart_rx_out: .byte 2

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
usart_rx_store:
  lds xl, usart_rx_in
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

.set usartpc = pc
.org URXCaddr
  jmp_ usart_rx_isr
.org usartpc


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
  .dw XT_CSTORE
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart_rx_out
  .dw XT_CSTORE

  .dw XT_EXIT

; ( -- c)
; MCU
; get 1 character from input queue, wait if needed using interrupt driver
VE_RX_ISR:
    .dw $ff06
    .db "rx-isr"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX_ISR
XT_RX_ISR:
    .dw DO_COLON
PFA_RX_ISR:
  .dw XT_RXQ_ISR
  .dw XT_DOCONDBRANCH
  .dw PFA_RX_ISR
  .dw XT_DOLITERAL
  .dw usart_rx_out
  .dw XT_CFETCH
  .dw XT_DUP
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart_rx_mask
  .dw XT_AND
  .dw XT_DOLITERAL
  .dw usart_rx_out
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw usart_rx_data
  .dw XT_PLUS
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  
; MCU
; check if unread characters are in the input queue using interrupt driver
VE_RXQ_ISR:
    .dw $ff07
    .db "rx?-isr",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RXQ_ISR
XT_RXQ_ISR:
    .dw DO_COLON
PFA_RXQ_ISR:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart_rx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart_rx_in
  .dw XT_CFETCH
  .dw XT_NOTEQUAL
  .dw XT_EXIT
