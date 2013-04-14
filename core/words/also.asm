; ( -- ) 
; Search Order
; Duplicate first entry in the current search order list
VE_ALSO:
    .dw $ff04
    .db "also"
    .dw VE_HEAD
    .set VE_HEAD = VE_ALSO
XT_ALSO:
    .dw DO_COLON
PFA_ALSO:
    .dw XT_GET_ORDER
    .dw XT_OVER
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_SET_ORDER
    .dw XT_EXIT
