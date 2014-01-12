; ( u1 -- u2 ) 
; Arithmetics
; Unsigned multiplication by 4
VE_4STAR:
    .dw $ff02
    .db "4*"
    .dw VE_HEAD
    .set VE_HEAD = VE_4STAR
XT_4STAR:
    .dw PFA_4STAR
PFA_4STAR:
    lsl tosl
    rol tosh
    lsl tosl
    rol tosh
    jmp_ DO_NEXT
