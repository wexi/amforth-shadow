; ( n1 -- n2 ) 
; Arithmetics
; arithmetic shift right
VE_2SLASH:
    .dw $ff02
    .db "2/"
    .dw VE_HEAD
    .set VE_HEAD = VE_2SLASH
XT_2SLASH:
    .dw PFA_2SLASH
PFA_2SLASH:
    asr tosh
    ror tosl
    jmp_ DO_NEXT

; ( u1 -- u2 ) 
; Arithmetics
; logical shift right
VE_U2SLASH:
    .dw $ff03
    .db "u2/",0
    .dw VE_HEAD
    .set VE_HEAD = VE_U2SLASH
XT_U2SLASH:
    .dw PFA_U2SLASH
PFA_U2SLASH:
    lsr tosh
    ror tosl
    jmp_ DO_NEXT
