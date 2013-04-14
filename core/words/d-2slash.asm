; ( d1 -- d2 ) 
; Arithmetics
; shift a double cell value right
VE_D2SLASH:
    .dw $ff03
    .db "d2/",0
    .dw VE_HEAD
    .set VE_HEAD = VE_D2SLASH
XT_D2SLASH:
    .dw PFA_D2SLASH
PFA_D2SLASH:
    ld temp0, Y+
    ld temp1, Y+
    asr tosh
    ror tosl
    ror temp1
    ror temp0
    st -Y, temp1
    st -Y, temp0
    jmp_ DO_NEXT
