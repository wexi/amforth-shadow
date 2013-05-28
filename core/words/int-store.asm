; ( xt i -- )  
; Interrupt
; stores XT as interrupt vector i
VE_INTSTORE:
    .dw $ff04
    .db "int!"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTSTORE
XT_INTSTORE:
    .dw DO_COLON
PFA_INTSTORE:
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT
