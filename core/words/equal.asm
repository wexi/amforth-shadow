; ( n1 n2 -- flag ) 
; Compare
; compares two values for equality
VE_EQUAL:
    .dw $ff01
    .db "=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUAL
XT_EQUAL:
    .dw PFA_EQUAL
PFA_EQUAL:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
PFA_EQUALDONE:
    brne PFA_ZERO1
    rjmp PFA_TRUE1
