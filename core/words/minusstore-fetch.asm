; ( n addr -- n' ) 
; Arithmetic
; subtract n from the addressed word and return the difference
VE_MINUSSTOREFETCH:
    .dw $ff03
    .db "-!@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_MINUSSTOREFETCH
XT_MINUSSTOREFETCH:
    .dw PFA_MINUSSTOREFETCH
PFA_MINUSSTOREFETCH:
    movw zl, tosl		;Z = addr
    ld temp0, Y+		;temp = n
    ld temp1, Y+
    ldd tosl, Z+0
    ldd tosh, Z+1
    sub tosl, temp0
    sbc tosh, temp1
    std Z+0, tosl
    std Z+1, tosh
    jmp_ DO_NEXT
