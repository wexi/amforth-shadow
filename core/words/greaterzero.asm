; ( n1 -- flag )
; Compare
; true if n1 is greater than 0
VE_GREATERZERO:
    .dw $ff02
    .db "0>"
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    cp zerol, tosl
    cpc zeroh, tosh
    movw tosh:tosl, zeroh:zerol
    brge PFA_GREATERZERO1   
    sbiw tosh:tosl, 1
PFA_GREATERZERO1:
    jmp_ DO_NEXT
