; ( -- ) 
; Compiler
; set immediate flag for the most recent word definition
VE_IMMEDIATE:
    .dw $ff09
    .db "immediate",0
    .dw VE_HEAD
    .set VE_HEAD = VE_IMMEDIATE
XT_IMMEDIATE:
    .dw DO_COLON
PFA_IMMEDIATE:
    .dw XT_GET_CURRENT
    .dw XT_FETCHE
    .dw XT_DUP
    .dw XT_FETCHI
    .dw XT_DOLITERAL
    .dw $7fff
    .dw XT_AND
    .dw XT_SWAP
    .dw XT_STOREI
    .dw XT_EXIT
