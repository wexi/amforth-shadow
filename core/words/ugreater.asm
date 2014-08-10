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
    ld temp0, Y+
    ld temp1, Y+
    cp	tosl, temp0
    cpc tosh, temp1
    movw tosh:tosl, zeroh:zerol
    brsh PFA_UGREATER1		;u2 ≥ u1 ?
    sbiw tosh:tosl, 1
PFA_UGREATER1:
    jmp_ DO_NEXT

