; ( n1 n2 -- flag )
; Compare
; compares two double cell values
VE_DEQUAL:
    .dw $ff02
    .db "d="
    .dw VE_HEAD
    .set VE_HEAD = VE_DEQUAL
XT_DEQUAL:
    .dw DO_COLON
PFA_DEQUAL:
    .dw XT_DMINUS
    .dw XT_OR
    .dw XT_EQUALZERO
    .dw XT_EXIT
