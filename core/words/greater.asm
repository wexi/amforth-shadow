; ( n1 n2 -- flag ) 
; Compare
; flag is true if n1 is greater than n2
VE_GREATER:
    .dw $ff01
    .db ">",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATER
XT_GREATER:
    .dw PFA_GREATER
PFA_GREATER:
    ld temp0, Y+
    ld temp1, Y+
    cp	tosl, temp0
    cpc tosh, temp1
    movw tosh:tosl, zeroh:zerol
    brge PFA_GREATER0		;n2 ≥ n1 ?
    sbiw tosh:tosl, 1		;n2 < n1
PFA_GREATER0:
    jmp_ DO_NEXT

