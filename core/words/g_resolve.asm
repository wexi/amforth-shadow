; ( dest -- ) 
; Compiler
; resolve backward jumps
;VE_GRESOLVE:
;    .dw $ff08
;    .db ">resolve"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_GRESOLVE
XT_GRESOLVE:
    .dw DO_COLON
PFA_GRESOLVE:
    .dw XT_QSTACK
    .dw XT_DP
    .dw XT_SWAP
    .dw XT_STOREI
    .dw XT_EXIT
