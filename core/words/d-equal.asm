; ( n1 n2 -- flag ) 
; Compare
; compares two double cell values
VE_DEQUAL:
    .dw $ff02
    .db "d="
    .dw VE_HEAD
    .set VE_HEAD = VE_DEQUAL
XT_DEQUAL:
    .dw PFA_DEQUAL
PFA_DEQUAL:
    ld temp2, Y+
    ld temp3, Y+

    ld temp4, Y+
    ld temp5, Y+
    ld temp6, Y+
    ld temp7, Y+

    cp tosl, temp4
    cpc tosh, temp5
    cpc temp2, temp6
    cpc temp3, temp7

    breq PFA_DEQUALTRUE
    jmp_ PFA_ZERO1
PFA_DEQUALTRUE:
    jmp_ PFA_TRUE1
