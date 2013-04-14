; ( n1 -- n2 ) 
; Arithmetics
; arithmetic shift left, filling with zero
VE_2STAR:
    .dw $ff02
    .db "2*"
    .dw VE_HEAD
    .set VE_HEAD = VE_2STAR
XT_2STAR:
    .dw PFA_2STAR
PFA_2STAR:
    lsl tosl
    rol tosh
    jmp_ DO_NEXT
