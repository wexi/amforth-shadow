; ( xn .. x0 n -- ) (R: -- xn .. x0 n)
; Stack
; move n items from data stack to return stack
VE_N_R_FROM:
    .dw $ff03
    .db "nr>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_N_R_FROM
XT_N_R_FROM:
    .dw PFA_N_R_FROM
PFA_N_R_FROM:
    savetos
    pop zh
    pop zl
    mov  temp0, zl
PFA_N_R_FROM1:
    pop tosl
    pop tosh
    savetos
    dec temp0
    brne PFA_N_R_FROM1
    movw tosl, zl
    jmp_ DO_NEXT
