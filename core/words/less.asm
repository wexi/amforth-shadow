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
    ld temp2, Y+
    ld temp3, Y+
    cp temp2, tosl
    cpc temp3, tosh
PFA_LESSDONE:
    brge PFA_ZERO1
    rjmp PFA_TRUE1
