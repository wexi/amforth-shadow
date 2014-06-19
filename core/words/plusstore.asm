; ( n addr -- ) 
; Arithmetics
; add n to the addressed word
VE_PLUSSTORE:
    .dw $ff02
    .db "+!"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw zh:zl, tosh:tosl	;addr
    loadtos			;n
    ld temp0, Z
    ldd temp1, Z+1
    add temp0, tosl
    adc temp1, tosh
    st Z, temp0
    std Z+1, temp1
    loadtos
    jmp_ DO_NEXT
