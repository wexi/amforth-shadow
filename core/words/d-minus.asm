; ( d1 d2 -- d3 ) 
; Arithmetics
; subtract d2 from d1 
VE_DMINUS:
    .dw $ff02
    .db "d-"
    .dw VE_HEAD
    .set VE_HEAD = VE_DMINUS
XT_DMINUS:
    .dw PFA_DMINUS
PFA_DMINUS:
    ld temp2, Y+
    ld temp3, Y+

    ld temp4, Y+
    ld temp5, Y+
    ld temp6, Y+
    ld temp7, Y+

    sub temp6, temp2
    sbc temp7, temp3
    sbc temp4, tosl
    sbc temp5, tosh

    st -Y, temp7
    st -Y, temp6
    movw tosl, temp4
    jmp_ DO_NEXT
