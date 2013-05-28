; ( n1 n2 -- n3) 
; Arithmetics
; add n1 and n2
VE_PLUS:
    .dw $ff01
    .db "+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUS
XT_PLUS:
    .dw PFA_PLUS
PFA_PLUS:
    ld temp0, Y+
    ld temp1, Y+
    add tosl, temp0
    adc tosh, temp1
    jmp_ DO_NEXT
