; ( xt1 xt2 -- ) 
; System
; stores xt1 as the xt to be executed when xt2 is called
VE_DEFERSTORE:
    .dw $ff06
    .db "defer!"
    .dw VE_HEAD
    .set VE_HEAD = VE_DEFERSTORE
XT_DEFERSTORE:
    .dw DO_COLON
PFA_DEFERSTORE:
    .dw XT_1PLUS
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_PLUS   ; 2 +
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_EXIT

