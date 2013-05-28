; ( d -- flag )
; Compare
; compares if a double double cell number is less than 0
VE_DLESSZERO:
    .dw $ff03
    .db "d0<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DLESSZERO
XT_DLESSZERO:
    .dw PFA_DLESSZERO
PFA_DLESSZERO:
    adiw Y,2
    sbrc tosh,7
    jmp PFA_TRUE1
    jmp PFA_ZERO1
