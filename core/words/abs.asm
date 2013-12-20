; ( n1 -- u1 ) 
; Arithmetics
; get the absolute value
VE_ABS:
    .dw $ff03
    .db "abs",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ABS
XT_ABS:
    .dw PFA_ABS
PFA_ABS:
    tst tosh
    brpl PFA_ABS1
    com tosl
    com tosh
    adiw tosl, 1
PFA_ABS1:
    jmp_ do_next
