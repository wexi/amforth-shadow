; ( -- xt ) (C: "<space>name" -- ) 
; Compiler
; what ' does in the interpreter mode, do in colon definitions
VE_BRACKETTICK:
    .dw $0003
    .db "[']",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BRACKETTICK
XT_BRACKETTICK:
    .dw DO_COLON
PFA_BRACKETTICK:
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_TICK
    .dw XT_COMMA
    .dw XT_EXIT
