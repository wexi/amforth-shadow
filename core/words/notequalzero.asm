; ( n -- flag ) 
; Compare
; true if n is not zero
VE_NOTEQUALZERO:
    .dw $ff03
    .db "0<>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .dw PFA_NOTEQUALZERO
PFA_NOTEQUALZERO:
    or tosh, tosl
    breq PFA_NOTEQUALZERO1
    ldiw tos, -1
PFA_NOTEQUALZERO1:
    jmp_ DO_NEXT	
