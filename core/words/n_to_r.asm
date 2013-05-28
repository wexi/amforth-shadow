; ( xn .. x0 n -- ) (R: -- xn .. x0 n)
; Stack
; move n items from data stack to return stack
VE_N_TO_R:
    .dw $ff03
    .db "n>r",0
    .dw VE_HEAD
    .set VE_HEAD = VE_N_TO_R
XT_N_TO_R:
    .dw PFA_N_TO_R
PFA_N_TO_R:
    movw zl, tosl
    mov  temp0, tosl
PFA_N_TO_R1:
    loadtos
    push tosh
    push tosl
    dec temp0
    brne PFA_N_TO_R1
    push zl
    push zh
    loadtos
    jmp_ DO_NEXT
