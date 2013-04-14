; ( d1 -- d2 ) 
; Arithmetics
; double cell negation
VE_DNEGATE:
    .dw $ff07
    .db "dnegate",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DNEGATE
XT_DNEGATE:
    .dw DO_COLON
PFA_DNEGATE:
    .dw XT_DINVERT
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_ZERO
    .dw XT_DPLUS
    .dw XT_EXIT
; : dnegate   ( ud1 -- ud2 ) dinvert 1. d+ ;
