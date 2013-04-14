; ( -- ) 
; Tools
; stack dump
VE_DOTS:
    .dw $ff02
    .db ".s"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOTS
XT_DOTS:
    .dw DO_COLON
PFA_DOTS:
    .dw XT_SP0
    .dw XT_SP_FETCH
    .dw XT_CELLPLUS
    .dw XT_DOQDO
    .dw PFA_DOTS2
PFA_DOTS1:
    .dw XT_I
    .dw XT_FETCH 
    .dw XT_UDOT
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_DOPLUSLOOP
    .dw PFA_DOTS1
PFA_DOTS2:
    .dw XT_EXIT
