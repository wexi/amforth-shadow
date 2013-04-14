; ( d1 d2 -- d3) 
; Arithmetics
; add 2 double cell values
VE_DPLUS:
    .dw $ff02
    .db "d+"
    .dw VE_HEAD
    .set VE_HEAD = VE_DPLUS
XT_DPLUS:
    .dw PFA_DPLUS
PFA_DPLUS:
    ld temp2, Y+
    ld temp3, Y+

    ld temp4, Y+
    ld temp5, Y+
    ld temp6, Y+
    ld temp7, Y+

    add temp2, temp6
    adc temp3, temp7
    adc tosl, temp4
    adc tosh, temp5
    
    st -Y, temp3
    st -Y, temp2
    jmp_ DO_NEXT
