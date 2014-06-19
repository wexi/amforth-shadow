; ( w1 addr -- w2 ) 
; Arithmetics
; add w1 to the addressed word and return the sum
VE_PLUSSTOREFETCH:
    .dw $ff03
    .db "+!@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTOREFETCH
XT_PLUSSTOREFETCH:
    .dw PFA_PLUSSTOREFETCH
PFA_PLUSSTOREFETCH:
    movw zh:zl, tosh:tosl	;Z = addr
    loadtos			;TOS = w1
    ld temp0, Z
    ldd temp1, Z+1
    add tosl, temp0
    adc tosh, temp1
    st Z, tosl
    std Z+1, tosh
    jmp_ DO_NEXT
