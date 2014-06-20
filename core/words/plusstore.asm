; ( w addr -- ) 
; Arithmetics
; add w to the addressed word
VE_PLUSSTORE:
    .dw $ff02
    .db "+!"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw zh:zl, tosh:tosl	;addr
    loadtos			;w
    ld temp0, Z
    ldd temp1, Z+1
    add tosl, temp0
    adc tosh, temp1
    st Z, tosl
    std Z+1, tosh
    loadtos
    jmp_ DO_NEXT
