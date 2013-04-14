; ( d1 d2 -- flag ) 
; Compare
; compares two double cell values (signed)
VE_DGREATER:
    .dw $ff02
    .db "d>"
    .dw VE_HEAD
    .set VE_HEAD = VE_DGREATER
XT_DGREATER:
    .dw PFA_DGREATER
PFA_DGREATER:
    ld temp0, Y+
    ld temp1, Y+

    ld temp2, Y+
    ld temp3, Y+
    ld temp4, Y+
    ld temp5, Y+

    cp temp4, temp0
    cpc temp5, temp1
    cpc temp2, tosl
    cpc temp3, tosh
    jmp_ PFA_GREATERDONE
