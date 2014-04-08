; ( xt1 xt2 -- ) 
; System
; does the real defer! for user based defers
VE_UDEFERSTORE:
    .dw $ff07
    .db "Udefer!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UDEFERSTORE
XT_UDEFERSTORE:
    .dw DO_COLON
PFA_UDEFERSTORE:
    .dw XT_FETCHI
    .dw XT_UP_FETCH
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT

