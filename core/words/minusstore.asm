; ( n addr -- ) 
; Arithmetics
; subtract n from the addressed word
VE_MINUSSTORE:
    .dw $ff02
    .db "-!"
    .dw VE_HEAD
    .set VE_HEAD = VE_MINUSSTORE
XT_MINUSSTORE:
    .dw PFA_MINUSSTORE
PFA_MINUSSTORE:
    movw zh:zl, tosh:tosl	;addr
    loadtos			;n
    ld temp0, Z
    ldd temp1, Z+1
    sub temp0, tosl
    sbc temp1, tosh
    st Z, temp0
    std Z+1, temp1
    loadtos
    jmp_ DO_NEXT
