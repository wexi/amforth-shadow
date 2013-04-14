; ( n -- ) 
; Numeric IO
; place a - in HLD if n is negative
VE_SIGN:
    .dw $ff04
    .db "sign"
    .dw VE_HEAD
    .set VE_HEAD = VE_SIGN
XT_SIGN:
    .dw DO_COLON
PFA_SIGN:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SIGN1
    .dw XT_DOLITERAL
    .dw $2d
    .dw XT_HOLD
PFA_SIGN1:
    .dw XT_EXIT
