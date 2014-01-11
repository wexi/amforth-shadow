; ( -- v) 
; MCU
; returns usart UBRR settings
VE_UBRR:
  .dw $ff04
  .db "ubrr"
  .dw VE_HEAD
  .set VE_HEAD = VE_UBRR
XT_UBRR:
  .dw PFA_DOVALUE1
PFA_UBRR:          ; ( -- )
  .dw EE_UBRRVAL
  .dw XT_EDEFERFETCH
  .dw XT_EDEFERSTORE
