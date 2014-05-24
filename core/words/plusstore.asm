; ( n addr -- ) 
; Arithmetic
; add n to the addressed word
VE_PLUSSTORE:
    .dw $ff02
    .db "+!"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw zh:zl, tosh:tosl	;Z = addr
    loadtos			;TOS = n
    ldd temp0, Z+0
    ldd temp1, Z+1
    add tosl, temp0
    adc tosh, temp1
    std Z+0, tosl
    std Z+1, tosh
    loadtos
    jmp_ DO_NEXT
