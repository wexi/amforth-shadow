; ( d1 d2 -- flag)
; Compare
; checks whether d1 is less than d2
VE_DLESS:
    .dw $ff02
    .db "d<"
    .dw VE_HEAD
    .set VE_HEAD = VE_DLESS
XT_DLESS:
    .dw DO_COLON
PFA_DLESS:
    .dw XT_DMINUS
    .dw XT_DLESSZERO
    .dw XT_EXIT
