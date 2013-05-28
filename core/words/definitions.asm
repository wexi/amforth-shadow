; ( -- ) 
; Search Order
; Make the compilation word list the same as the current first word list in the search order.
VE_DEFINITIONS:
    .dw $ff0b
    .db "definitions",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DEFINITIONS
XT_DEFINITIONS:
    .dw DO_COLON
PFA_DEFINITIONS:
    .dw XT_GET_ORDER
    .dw XT_OVER
    .dw XT_SET_CURRENT
    ; now empty the order list on stack
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_DEFINITIONS2
PFA_DEFINITIONS1:
    .dw XT_DROP
    .dw XT_DOLOOP
    .dw PFA_DEFINITIONS1
PFA_DEFINITIONS2:
    .dw XT_EXIT
