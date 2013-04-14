; (u1 u2 -- rem quot)
; Arithmetics
; unsigned division with remainder
VE_USLASHMOD:
    .dw $ff05
    .db "u/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_USLASHMOD
XT_USLASHMOD:
    .dw DO_COLON
PFA_USLASHMOD:
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_UMSLASHMOD
    .dw XT_EXIT
