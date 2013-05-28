; ( -- )
; Compiler
; finish colon defintion, compiles (exit) and returns to interpret state 
VE_SEMICOLON:
    .dw $0001
    .db $3b,0
    .dw VE_HEAD
    .set VE_HEAD = VE_SEMICOLON
XT_SEMICOLON:
    .dw DO_COLON
PFA_SEMICOLON:
    .dw XT_COMPILE
    .dw XT_EXIT
    .dw XT_LBRACKET
    .dw XT_REVEAL
    .dw XT_EXIT
