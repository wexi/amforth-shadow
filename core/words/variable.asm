; ( cchar -- ) 
; Compiler
; create a dictionary entry for a variable and allocate 1 cell RAM
VE_VARIABLE:
    .dw $ff08
    .db "variable"
    .dw VE_HEAD
    .set VE_HEAD = VE_VARIABLE
XT_VARIABLE:
    .dw DO_COLON
PFA_VARIABLE:
    .dw XT_HERE
    .dw XT_CONSTANT
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_ALLOT
    .dw XT_EXIT
