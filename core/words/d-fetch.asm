; ( addr -- d ) 
; Memory
; double precision fetch from RAM
VE_DFETCH:
    .dw $ff02
    .db "d@"
    .dw VE_HEAD
    .set VE_HEAD = VE_DFETCH
XT_DFETCH:
    .dw PFA_DFETCH
PFA_DFETCH:
    movw zl, tosl
    ld tosl, Z+
    ld tosh, Z+
    savetos
    ld tosl, Z+
    ld tosh, Z+
    jmp_ DO_NEXT
