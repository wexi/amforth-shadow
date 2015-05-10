; ( ud1 -- ud2 ) 
; Arithmetic
; Unsigned double integer divide by 2
VE_DU2SLASH:
    .dw $ff04
    .db "du2/"
    .dw VE_HEAD
    .set VE_HEAD = VE_DU2SLASH
XT_DU2SLASH:
    .dw PFA_DU2SLASH
PFA_DU2SLASH:
    ld temp0, Y+
    ld temp1, Y+
    lsr tosh
    ror tosl
    ror temp1
    ror temp0
    st -Y, temp1
    st -Y, temp0
    jmp_ DO_NEXT
