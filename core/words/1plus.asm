; ( n1|u1 -- n2|u2 ) 
; Arithmetics
; optimized increment
VE_1PLUS:
    .dw $ff02
    .db "1+"
    .dw VE_HEAD
    .set VE_HEAD = VE_1PLUS
XT_1PLUS:
    .dw PFA_1PLUS
PFA_1PLUS:
    adiw tosl,1
    jmp_ DO_NEXT
