; ( flag -- flag' ) 
; Logic
; identical to 0=
VE_NOT:
    .dw $ff03
    .db "not",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOT
XT_NOT:
    .dw PFA_EQUALZERO
