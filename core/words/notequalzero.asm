; ( n -- flag ) 
; Compare
; true if n is not zero
VE_NOTEQUALZERO:
    .dw $ff03
    .db "0<>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .dw DO_COLON
PFA_NOTEQUALZERO:
    .dw XT_EQUALZERO
    .dw XT_EQUALZERO
    .dw XT_EXIT
