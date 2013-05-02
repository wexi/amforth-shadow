; ( a-addr - n ) 
; Memory
; fetch int8 from RAM
VE_FETCHC:
    .dw $ff02
    .db "@c"
    .dw VE_HEAD
    .set VE_HEAD  = VE_FETCHC
XT_FETCHC:
    .dw PFA_FETCHC
PFA_FETCHC:
    movw zl, tosl
    ld tosl, Z
    clr tosh
    tst tosl
    brpl PFA_FETCHC1
    com tosh			; sign extension
PFA_FETCHC1:
    jmp_ DO_NEXT
