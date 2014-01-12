; ( u1 -- u2 ) 
; Arithmetics
; Unsigned division by 4
VE_U4SLASH:
    .dw $ff03
    .db "u4/",0
    .dw VE_HEAD
    .set VE_HEAD = VE_U4SLASH
XT_U4SLASH:
    .dw PFA_U4SLASH
PFA_U4SLASH:
    lsr tosh
    ror tosl
    lsr tosh
    ror tosl
    jmp_ DO_NEXT
