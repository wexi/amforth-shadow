; ( n a-addr -- ) 
; Arithmetics
; add n to content of RAM address a-addr
VE_PLUSSTORE:
    .dw $ff02
    .db "+!"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw zl, tosl		;a-addr
    loadtos			;n
    ldd temp0, Z+0
    ldd temp1, Z+1
    add temp0, tosl
    adc temp1, tosh
    std Z+0, temp0
    std Z+1, temp1
    loadtos
    jmp_ DO_NEXT
