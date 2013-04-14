; ( -- x1 x2 )
; System
; runtime of 2literal
;VE_DO2LITERAL:
;    .dw $ff0a
;    .db "(2literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DO2LITERAL
XT_DO2LITERAL:
    .dw PFA_DO2LITERAL
PFA_DO2LITERAL:
    savetos
    movw zl, xl
    readflashcell temp0,temp1
    movw zl, xl
    adiw zl, 1
    readflashcell tosl,tosh
    savetos
    movw tosl, temp0
    adiw xl, 2
    jmp_ DO_NEXT

