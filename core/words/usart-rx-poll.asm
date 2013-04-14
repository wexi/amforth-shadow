; (c -- )
; MCU
; wait for one character and read it from the terminal connection using register poll
VE_RX_POLL:
    .dw $ff07
    .db "rx-poll",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX_POLL
XT_RX_POLL:
    .dw DO_COLON
PFA_RX_POLL:
  ; wait for data ready
  .dw XT_RXQ_POLL
  .dw XT_DOCONDBRANCH
  .dw PFA_RX_POLL
  ; send to usart
  .dw XT_DOLITERAL
  .dw USART_DATA
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can be appended to output queue using register poll
VE_RXQ_POLL:
    .dw $ff08
    .db "rx?-poll"
    .dw VE_HEAD
    .set VE_HEAD = VE_RXQ_POLL
XT_RXQ_POLL:
    .dw DO_COLON
PFA_RXQ_POLL:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw bm_USART_RXRD
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw USART_A
  .dw XT_CFETCH
  .dw XT_AND
  .dw XT_EQUAL
  .dw XT_EXIT
