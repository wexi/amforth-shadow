; ( d1 d2 -- flag )
; Compare
; compares two double cell values (signed)
VE_DGREATER:
    .dw $ff02
    .db "d>"
    .dw VE_HEAD
    .set VE_HEAD = VE_DGREATER
XT_DGREATER:
    .dw DO_COLON
PFA_DGREATER:
    .dw XT_DMINUS
    .dw XT_DGREATERZERO
    .dw XT_EXIT
