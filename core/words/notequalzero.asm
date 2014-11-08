; ( n -- flag ) 
; Compare
; true if n is not zero
VE_NOTEQUALZERO:
    .dw $ff03
    .db "0<>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    _pfa_
    or tosh, tosl
    breq PFA_NOTEQUALZERO
    ldiw tos, -1
PFA_NOTEQUALZERO:
    jmp_ DO_NEXT	
