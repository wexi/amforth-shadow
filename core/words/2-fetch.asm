; ( a-addr -- w1 w2 ) 
; Memory
; two-fetch: w2 from a-addr, w1 from a-addr+1
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
