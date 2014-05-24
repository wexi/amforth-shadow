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
    movw zl, tosl		;Z = addr
    ld temp0, Y+		;temp = n
    ld temp1, Y+
    ldd tosl, Z+0
    ldd tosh, Z+1
    sub tosl, temp0
    sbc tosh, temp1
    std Z+0, tosl
    std Z+1, tosh
    ld tosl, Y+
    ld tosh, Y+
    jmp_ DO_NEXT
