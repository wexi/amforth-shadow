; ( -- n) (R: n -- n )
; Stack
; fetch content of TOR
VE_R_FETCH:
    .dw $ff02
    .db "r@"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FETCH
XT_R_FETCH:
    .dw PFA_R_FETCH
PFA_R_FETCH:
    savetos
    pop tosl
    pop tosh
    push tosh
    push tosl
    jmp_ DO_NEXT
