; ( xt1 xt2 -- ) 
; System
; does the real defer! for ram defers
VE_RDEFERSTORE:
    .dw $ff07
    .db "Rdefer!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RDEFERSTORE
XT_RDEFERSTORE:
    .dw DO_COLON
PFA_RDEFERSTORE:
    .dw XT_FETCHI
    .dw XT_STORE
    .dw XT_EXIT

