; ( -- ) 
; Character IO
; cause subsequent output appear at the beginning of the next line
VE_CR:
    .dw $ff02
    .db "cr"
    .dw VE_HEAD
    .set VE_HEAD = VE_CR
XT_CR:
    .dw DO_COLON
PFA_CR:
    .dw XT_DOLITERAL
    .dw 13
    .dw XT_EMIT
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_EMIT
    .dw XT_EXIT
