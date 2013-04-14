; ( n1 -- n2 ) 
; Arithmetics
; exchange the bytes of the TOS
VE_BYTESWAP:
    .dw $ff02
    .db "><"
    .dw VE_HEAD
    .set VE_HEAD = VE_BYTESWAP
XT_BYTESWAP:
    .dw PFA_BYTESWAP
PFA_BYTESWAP:
    mov temp0, tosh
    mov tosh, tosl
    mov tosl, temp0
    jmp_ DO_NEXT
