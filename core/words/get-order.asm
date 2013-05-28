; ( -- widn .. wid0 n) 
; Search Order
; Get the current search order word list
VE_GET_ORDER:
    .dw $ff09
    .db "get-order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_ORDER
XT_GET_ORDER:
    .dw DO_COLON
PFA_GET_ORDER:
    .dw XT_DOLITERAL
    .dw EE_ORDERLISTLEN
    .dw XT_FETCH_EE_ARRAY
    .dw XT_EXIT
