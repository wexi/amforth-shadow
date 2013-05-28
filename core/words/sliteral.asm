; (C: addr len -- ) 
; String
; compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack
VE_SLITERAL:
  .dw $0008
  .db "sliteral"
  .dw VE_HEAD
  .set VE_HEAD = VE_SLITERAL
XT_SLITERAL:
    .dw DO_COLON
PFA_SLITERAL:
    .dw XT_COMPILE
    .dw XT_DOSLITERAL    ; ( -- addr n)
    .dw XT_SCOMMA
    .dw XT_EXIT
