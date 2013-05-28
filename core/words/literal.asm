; ( -- n ) (C: n -- )
; Compiler
; compile a literal in colon defintions
VE_LITERAL:
    .dw $0007
    .db "literal",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LITERAL
XT_LITERAL:
    .dw DO_COLON
PFA_LITERAL:
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_COMMA
    .dw XT_EXIT
