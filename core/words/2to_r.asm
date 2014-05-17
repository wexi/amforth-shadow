; ( x1 x2 -- ) (R: -- x1 x2)
; Stack
; move DTOS to TOR
VE_2TO_R:
    .dw $ff03
    .db "2>r",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2TO_R
XT_2TO_R:
    .dw PFA_2TO_R
PFA_2TO_R:
    movw zl, tosl
    loadtos
    push tosh
    push tosl
    push zh
    push zl
    loadtos
    jmp_ DO_NEXT
