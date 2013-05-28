; ( u1 u2 -- flag ) 
; Compare
; true if u1 > u2 (unsigned)
VE_UGREATER:
    .dw $ff02
    .db "u>"
    .dw VE_HEAD
    .set VE_HEAD = VE_UGREATER
XT_UGREATER:
    .dw PFA_UGREATER
PFA_UGREATER:
    ld temp2, Y+
    ld temp3, Y+
    cp temp2, tosl
    cpc temp3, tosh
    brlo PFA_ZERO1
    brbs 1, PFA_ZERO1
    rjmp PFA_TRUE1
