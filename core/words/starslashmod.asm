; ( n1 n2 n3 -- rem quot) 
; Arithmetics
; signed multiply n1 * n2 and division  with n3 with double precision intermediate and remainder
VE_STARSLASHMOD:
    .dw $ff05
    .db "*/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STARSLASHMOD
XT_STARSLASHMOD:
    .dw DO_COLON
PFA_STARSLASHMOD:
    .dw XT_TO_R
    .dw XT_MSTAR
    .dw XT_R_FROM
    .dw XT_UMSLASHMOD
    .dw XT_EXIT
    