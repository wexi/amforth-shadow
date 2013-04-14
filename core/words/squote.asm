; ( -- addr len) (C: <cchar> -- ) 
; Compiler
; compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack
VE_SQUOTE:
  .dw $0002
  .db "s",$22
  .dw VE_HEAD
  .set VE_HEAD = VE_SQUOTE
XT_SQUOTE:
    .dw DO_COLON
PFA_SQUOTE:
    .dw XT_DOLITERAL
    .dw $22
    .dw XT_PARSE       ; ( -- addr n)
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_SQUOTE1
      .dw XT_COMPILE
      .dw XT_DOSLITERAL    ; ( -- addr n)
      .dw XT_SCOMMA
PFA_SQUOTE1:
    .dw XT_EXIT
