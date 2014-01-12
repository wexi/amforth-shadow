; ( n1 -- n2 ) 
; Arithmetics
; Signed divide by 4
VE_4SLASH:
    .dw $ff02
    .db "4/"
    .dw VE_HEAD
    .set VE_HEAD = VE_4SLASH
XT_4SLASH:
    .dw PFA_4SLASH
PFA_4SLASH:
    asr tosh
    ror tosl
    asr tosh
    ror tosl
    jmp_ DO_NEXT
