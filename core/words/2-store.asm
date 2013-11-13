; 2! ( w1 w2 a-addr -- ) 
; Memory
; two-store: w2 to a-addr, w1 to a-addr+1
VE_2STORE:
    .dw $ff02
    .db "2!"
    .dw VE_HEAD
    .set VE_HEAD = VE_2STORE
XT_2STORE:
    .dw PFA_2STORE
PFA_2STORE:
    movw zl, tosl
    loadtos
    st Z+, tosl
    st Z+, tosh
    loadtos
    st Z+, tosl
    st Z+, tosh
    loadtos
    jmp_ DO_NEXT
