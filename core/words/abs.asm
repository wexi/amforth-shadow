; ( n -- u ) 
; Arithmetics
; get the absolute value
VE_ABS:
    .dw $ff03
    .db "abs",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ABS
XT_ABS:
    _pfa_
    TST TOSH
    BRPL PFA_ABS1
    COM TOSL
    COM TOSH
    ADIW TOSH:TOSL, 1
PFA_ABS1:
    JMP_ DO_NEXT
