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
    movw tosh:tosl, zeroh:zerol
    brne PFA_EQUALZERO1
    sbiw tosh:tosl, 1
PFA_EQUALZERO1:
    jmp_ DO_NEXT
