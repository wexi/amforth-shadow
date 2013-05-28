; ( a-addr - c1 ) 
; Memory
; fetch a single byte from memory mapped locations
VE_CFETCH:
    .dw $ff02
    .db "c@"
    .dw VE_HEAD
    .set VE_HEAD  = VE_CFETCH
XT_CFETCH:
    .dw PFA_CFETCH
PFA_CFETCH:
    movw zl, tosl
    clr tosh
    ld tosl, Z
    jmp_ DO_NEXT
