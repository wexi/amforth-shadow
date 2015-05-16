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

; ( u1 u2 -- flag ) 
; Compare
; true if u1 ≥ u2 (unsigned)
VE_UGREATEREQUAL:
    .dw $ff03 
    .db "u>=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UGREATEREQUAL
XT_UGREATEREQUAL:
    .dw PFA_UGREATEREQUAL
PFA_UGREATEREQUAL:
    ld temp0, Y+
    ld temp1, Y+
    cp temp0, tosl
    cpc temp1, tosh
    movw tosh:tosl, zeroh:zerol	
    brlo PFA_UGREATEREQUAL0	;u1 < u2 ?
    sbiw tosh:tosl, 1
PFA_UGREATEREQUAL0:
    jmp_ DO_NEXT
    
