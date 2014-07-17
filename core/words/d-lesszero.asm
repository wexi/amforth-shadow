; ( d -- flag )
; Compare
; compares if double precision number is less than 0
VE_DLESSZERO:
    .dw $ff03
    .db "d0<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DLESSZERO
XT_DLESSZERO:
    .dw PFA_DLESSZERO
PFA_DLESSZERO:
    adiw Y, 2
    mov temp0, tosh
    movw tosh:tosl, zeroh:zerol
    sbrc temp0, 7
    sbiw tosh:tosl, 1
    jmp_ DO_NEXT

