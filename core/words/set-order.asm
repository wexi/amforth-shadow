; ( widn .. wid0 n -- ) 
; Search Order
; replace the search order list
VE_SET_ORDER:
    .dw $ff09
    .db "set-order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_ORDER
XT_SET_ORDER:
    .dw DO_COLON
PFA_SET_ORDER:
    .dw XT_DOLITERAL
    .dw EE_ORDERLISTLEN
    .dw XT_STORE_EE_ARRAY
    .dw XT_EXIT

