; ( -- ) 
; MCU
; initialize the user area to use the system terminal for IO
VE_TOUSART:
  .dw $ff06
  .db ">usart"
  .dw VE_HEAD
  .set VE_HEAD = VE_TOUSART
XT_TOUSART:
  .dw DO_COLON
PFA_TOUSART:          ; ( -- )

  .dw XT_DOLITERAL
  .dw XT_TX
  .dw XT_DOLITERAL
  .dw XT_EMIT
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_TXQ
  .dw XT_DOLITERAL
  .dw XT_EMITQ
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_RX
  .dw XT_DOLITERAL
  .dw XT_KEY
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_RXQ
  .dw XT_DOLITERAL
  .dw XT_KEYQ
  .dw XT_DEFERSTORE

  .dw XT_DOLITERAL
  .dw XT_NOOP
  .dw XT_DOLITERAL
  .dw XT_SLASHKEY
  .dw XT_DEFERSTORE

  .dw XT_EXIT

