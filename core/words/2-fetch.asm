; ( addr -- x1 x2 )
; Memory
; two-fetch from RAM
VE_2FETCH:
    .dw $ff02
    .db "2@"
    .dw VE_HEAD
    .set VE_HEAD = VE_2FETCH
XT_2FETCH:
    .dw PFA_2FETCH
PFA_2FETCH:
    movw zl, tosl
    ldd tosh, Z+3
    ldd tosl, Z+2
    savetos
    ldd tosh, Z+1
    ldd tosl, Z+0
    jmp_ DO_NEXT
