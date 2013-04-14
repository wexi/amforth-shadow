; ( -- x ) (C: x "<spaces>name" -- )
; Compiler
; create a constant in the dictionary
VE_CONSTANT:
    .dw $ff08
    .db "constant"
    .dw VE_HEAD
    .set VE_HEAD = VE_CONSTANT
XT_CONSTANT:
    .dw DO_COLON
PFA_CONSTANT:
    .dw XT_DOCREATE
    .dw XT_REVEAL
    .dw XT_COMPILE
    .dw PFA_DOVARIABLE
    .dw XT_COMMA
    .dw XT_EXIT

