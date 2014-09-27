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
    ld temp2, Y+
    ld temp3, Y+
    cp temp2, tosl
    cpc temp3, tosh
PFA_GREATERDONE:
    brlt PFA_ZERO1
    brbs 1, PFA_ZERO1
    rjmp PFA_TRUE1
