; ( n a-addr -- ) 
; Arithmetics
; subtract n from the content of RAM address a-addr
VE_MINUSSTORE:
    .dw $ff02
    .db "-!"
    .dw VE_HEAD
    .set VE_HEAD = VE_MINUSSTORE
XT_MINUSSTORE:
    .dw PFA_MINUSSTORE
PFA_MINUSSTORE:
    movw zl, tosl		;a-addr
    loadtos			;n
    ldd temp0, Z+0
    ldd temp1, Z+1
    sub temp0, tosl
    sbc temp1, tosh
    std Z+0, temp0
    std Z+1, temp1
    loadtos
    jmp_ DO_NEXT
