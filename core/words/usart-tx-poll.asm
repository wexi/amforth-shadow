; (c -- )
; MCU
; check availability and send one character to the terminal using register poll
VE_TX_POLL:
    .dw $ff07
    .db "tx-poll",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX_POLL
XT_TX_POLL:
    .dw DO_COLON
PFA_TX_POLL:
  ; wait for data ready
  .dw XT_TXQ_POLL
  .dw XT_DOCONDBRANCH
  .dw PFA_TX_POLL
  ; send to usart
  .dw XT_DOLITERAL
  .dw USART_DATA
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f) MCU
; MCU
; check if a character can be send using register poll
VE_TXQ_POLL:
    .dw $ff08
    .db "tx?-poll"
    .dw VE_HEAD
    .set VE_HEAD = VE_TXQ_POLL
XT_TXQ_POLL:
    .dw DO_COLON
PFA_TXQ_POLL:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw USART_A
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw bm_USART_TXRD
  .dw XT_AND
  .dw XT_EXIT
