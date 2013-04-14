; ( -- )
; MCU
; initialize the atxmega usart (ATXmega)
VE_USARTX:
  .dw $ff07
  .db "+usartx",0
  .dw VE_HEAD
  .set VE_HEAD = VE_USARTX
XT_USARTX:
  .dw DO_COLON
PFA_USARTX:          ; ( -- )

  .dw XT_DOLITERAL
  .dw $88
  .dw XT_DOLITERAL
  .dw TERM_USART_PORT + PORT_DIRSET_offset
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw $44
  .dw XT_DOLITERAL
  .dw TERM_USART_PORT + PORT_DIRCLR_offset
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART_A_VALUE
  .dw XT_DOLITERAL
  .dw TERM_USART + USART_CTRLA_offset
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART_B_VALUE
  .dw XT_DOLITERAL
  .dw TERM_USART + USART_CTRLB_offset
  .dw XT_CSTORE

  .dw XT_DOLITERAL
  .dw USART_C_VALUE
  .dw XT_DOLITERAL
  .dw TERM_USART + USART_CTRLC_offset
  .dw XT_CSTORE

  .dw XT_UBRR
  .dw XT_DUP
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw TERM_USART + USART_BAUDCTRLB_offset
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw TERM_USART + USART_BAUDCTRLA_offset
  .dw XT_CSTORE

  .dw XT_USART_INIT_RX
  .dw XT_USART_INIT_TX
  .dw XT_EXIT
