; ( n1 n2 -- n3) 
; Arithmetics
; logically shift n1 left n2 times
VE_LSHIFT:
    .dw $ff06
    .db "lshift"
    .dw VE_HEAD
    .set VE_HEAD = VE_LSHIFT
XT_LSHIFT:
    .dw PFA_LSHIFT
PFA_LSHIFT:
    movw zl, tosl
    loadtos
PFA_LSHIFT1:
    sbiw zl, 1
    brmi PFA_LSHIFT2
    lsl tosl
    rol tosh
    rjmp PFA_LSHIFT1
PFA_LSHIFT2:
    jmp_ DO_NEXT

