; ( u1 u2 -- flag) 
; Compare
; true if u1 < u2 (unsigned)
VE_ULESS:
    .dw $ff02
    .db "u<"
    .dw VE_HEAD
    .set VE_HEAD = VE_ULESS
XT_ULESS:
    .dw PFA_ULESS
PFA_ULESS:
    ld temp0, Y+
    ld temp1, Y+
    cp	temp0, tosl
    cpc temp1, tosh
    movw tosh:tosl, zeroh:zerol
    brsh PFA_ULESS0		;u1 ≥ u2 ?
    sbiw tosh:tosl, 1
PFA_ULESS0:
    jmp_ DO_NEXT

; ( u1 u2 -- flag ) 
; Compare
; true if u1 ≤ u2 (unsigned)
VE_ULESSEQUAL:
    .dw $ff03 
    .db "u<=", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_ULESSEQUAL
XT_ULESSEQUAL:
    .dw PFA_ULESSEQUAL
PFA_ULESSEQUAL:	
    ld temp0, Y+
    ld temp1, Y+
    cp tosl, temp0
    cpc tosh, temp1
    movw tosh:tosl, zeroh:zerol	
    brlo PFA_ULESSEQUAL0	;u1 > u2 ?
    sbiw tosh:tosl, 1
PFA_ULESSEQUAL0:
    jmp_ DO_NEXT
	
