; ( n1 n2 -- n3 ) 
; Arithmetics
; shift n1 n2-times logically right
VE_RSHIFT:
    .dw $ff06
    .db "rshift"
    .dw VE_HEAD
    .set VE_HEAD = VE_RSHIFT
XT_RSHIFT:
    .dw PFA_RSHIFT
PFA_RSHIFT:
    movw zl, tosl
    loadtos
PFA_RSHIFT1:
    sbiw zl, 1
    brmi PFA_RSHIFT2
    lsr tosh
    ror tosl
    rjmp PFA_RSHIFT1
PFA_RSHIFT2:
    jmp_ DO_NEXT

