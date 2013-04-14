; ( -- )
; MCU
; initialize usart
VE_USART:
  .dw $ff06
  .db "+usart"
  .dw VE_HEAD
  .set VE_HEAD = VE_USART
XT_USART:
  .dw DO_COLON
PFA_USART:          ; ( -- )

  .dw XT_DOLITERAL
  .dw USART_B_VALUE
  .dw XT_DOLITERAL
  .dw USART_B
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART_C_VALUE
  .dw XT_DOLITERAL
  .dw USART_C | bm_USARTC_en
  .dw XT_CSTORE

  .dw XT_UBRR
  .dw XT_DUP
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw BAUDRATE_HIGH
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw BAUDRATE_LOW
  .dw XT_CSTORE

  .dw XT_USART_INIT_RX
  .dw XT_USART_INIT_TX
  .dw XT_EXIT
