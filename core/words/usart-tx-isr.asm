; (c -- )
; MCU
; put 1 character into output queue, wait if needed, enable UDRIE interrupt
VE_TX_ISR:
    .dw $ff06
    .db "tx-isr"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX_ISR
XT_TX_ISR:
    .dw DO_COLON
PFA_TX_ISR:
  ; wait for queue
  .dw XT_TXQ_ISR
  .dw XT_DOCONDBRANCH
  .dw PFA_TX_ISR
  ; append to queue
  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CFETCH        ; ( -- c tx_in)
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart_tx_mask
  .dw XT_AND           ; ( -- c tx_in_new)
  .dw XT_SWAP
  .dw XT_OVER          ; ( -- tx_in_new c tx_in_new
  .dw XT_DOLITERAL
  .dw usart_tx_data   ; ( -- c tx_in_new data)
  .dw XT_PLUS
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CSTORE
  ; enable interrupt
  .dw XT_DOLITERAL
  .dw USART_B
  .dw XT_DUP            ;
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw bm_ENABLE_INT_TX
  .dw XT_OR
  .dw XT_SWAP
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can be appended to output queue.
VE_TXQ_ISR:
    .dw $ff07
    .db "tx?-isr",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TXQ_ISR
XT_TXQ_ISR:
    .dw DO_COLON
PFA_TXQ_ISR:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart_tx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart_tx_in
  .dw XT_CFETCH
  .dw XT_GREATER
  .dw XT_NOT
  .dw XT_EXIT

