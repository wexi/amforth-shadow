; ( -- x1 x2 ) (C: x1 x2 -- )
; Compiler
; compile a cell pair literal in colon definitions
VE_2LITERAL:
    .dw $0008
    .db "2literal"
    .dw VE_HEAD
    .set VE_HEAD = VE_2LITERAL
XT_2LITERAL:
    .dw DO_COLON
PFA_2LITERAL:
    .dw XT_SWAP
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_COMMA
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_COMMA
    
    .dw XT_EXIT
