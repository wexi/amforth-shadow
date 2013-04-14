; ( n1 -- flag) 
; Compare
; compare with zero
VE_LESSZERO:
    .dw $ff02
    .db "0<"
    .dw VE_HEAD
    .set VE_HEAD = VE_LESSZERO
XT_LESSZERO:
    .dw PFA_LESSZERO
PFA_LESSZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    rjmp PFA_LESSDONE
