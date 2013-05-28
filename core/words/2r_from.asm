; ( -- x1 x2 ) (R: x1 x2 --) 
; Stack
; move DTOR to TOS
VE_2R_FROM:
    .dw $ff03
    .db "2r>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2R_FROM
XT_2R_FROM:
    .dw PFA_2R_FROM
PFA_2R_FROM:
    savetos
    pop tosl
    pop tosh
    savetos
    pop tosl
    pop tosh
    jmp_ DO_NEXT
