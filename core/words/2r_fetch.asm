; ( -- d) (R: d -- d )
; Stack
; fetch content of TOR
VE_2R_FETCH:
    .dw $ff03
    .db "2r@"
    .dw VE_HEAD
    .set VE_HEAD = VE_2R_FETCH
XT_2R_FETCH:
    .dw PFA_2R_FETCH
PFA_2R_FETCH:
    savetos
    pop zl
    pop zh
    pop tosl
    pop tosh
    push tosh
    push tosl
    push zh
    push zl
    savetos
    movw tosl, zl
    jmp_ DO_NEXT
