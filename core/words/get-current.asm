; ( -- wid) 
; Search Order
; get the wid of the current compilation word list
VE_GET_CURRENT:
    .dw $ff0b
    .db "get-current",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_CURRENT
XT_GET_CURRENT:
    .dw DO_COLON
PFA_GET_CURRENT:
    .dw XT_DOLITERAL
    .dw EE_CURRENT
    .dw XT_FETCHE
    .dw XT_EXIT
