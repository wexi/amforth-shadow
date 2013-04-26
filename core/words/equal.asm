; ( n1 n2 -- flag )
; Compare
; compares two values for equality
VE_EQUAL:
    .dw $ff01
    .db "=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUAL
XT_EQUAL:
    .dw DO_COLON
PFA_EQUAL:
    .dw XT_MINUS
    .dw XT_EQUALZERO
    .dw XT_EXIT
