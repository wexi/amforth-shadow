; ( i -- xt ) 
; Interrupt
; fetches XT from interrupt vector i
VE_INTFETCH:
    .dw $ff04
    .db "int@"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTFETCH
XT_INTFETCH:
    .dw DO_COLON
PFA_INTFETCH:
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT
