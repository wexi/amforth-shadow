; ( n1 n2 -- flag) 
; Compare
; true if n1 is less than n2
    VE_LESS:
    .dw $ff01
    .db "<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LESS
XT_LESS:
    .dw PFA_LESS
PFA_LESS:
    ld temp0, Y+
    ld temp1, Y+
    cp	temp0, tosl
    cpc temp1, tosh
    movw tosh:tosl, zeroh:zerol
    brge PFA_LESS0		;n1 ≥ n2 ?
    sbiw tosh:tosl, 1
PFA_LESS0:
    jmp_ DO_NEXT
