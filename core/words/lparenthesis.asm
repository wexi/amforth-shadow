; ( "ccc<paren>" -- ) 
; Compiler
; skip everything up to the closing bracket on the same line
VE_LPARENTHESIS:
    .dw $0001
    .db "(" ,0
    .dw VE_HEAD
    .set VE_HEAD = VE_LPARENTHESIS
XT_LPARENTHESIS:
    .dw DO_COLON
PFA_LPARENTHESIS:
    .dw XT_DOLITERAL
    .dw $29
    .dw XT_PARSE
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
