; ( -- ) 
; System
; runtime of branch
;VE_DOBRANCH:
;    .dw $ff08
;    .db "(branch)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOBRANCH
XT_DOBRANCH:
    .dw PFA_DOBRANCH
PFA_DOBRANCH:
    movw zl, XL
    readflashcell XL,XH
    jmp_ DO_NEXT
