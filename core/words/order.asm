; ( -- ) 
; Search Order
; print the wids of the current word list and the search order
VE_ORDER:
    .dw $ff05
    .db "order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ORDER
XT_ORDER:
    .dw DO_COLON
PFA_ORDER:
    .dw XT_GET_CURRENT
    .dw XT_UDOT
    .dw XT_CR
    .dw XT_GET_ORDER
    .dw XT_DUP
    .dw XT_UDOT
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_ORDER2
PFA_ORDER1:
    .dw XT_UDOT
    .dw XT_SPACE         ; ( -- addr n)
    .dw XT_DOLOOP
    .dw PFA_ORDER1
PFA_ORDER2:
    .dw XT_EXIT

