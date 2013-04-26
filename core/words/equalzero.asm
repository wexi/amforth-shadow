; ( n -- flag )
; Compare
; compare with 0 (zero)
VE_EQUALZERO:
    .dw $ff02
    .db "0="
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUALZERO
XT_EQUALZERO:
    .dw PFA_EQUALZERO
PFA_EQUALZERO:
    or tosh, tosl
    brne PFA_ZERO1
    rjmp PFA_TRUE1
