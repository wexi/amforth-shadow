; ( u w -- ) 
; Numeric IO
; unsigned PNO with single cells numbers, right aligned in width w
VE_UDOTR:
    .dw $ff03
    .db "u.r",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UDOTR
XT_UDOTR:
    .dw DO_COLON
PFA_UDOTR:
    .dw XT_ZERO
    .dw XT_SWAP
    .dw XT_UDDOTR
    .dw XT_EXIT
; : u.r       ( s n -- )   0 swap ud.r ;