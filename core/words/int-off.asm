; ( -- ) 
; Interrupt
; turns off all interrupts 
VE_INTOFF:
    .dw $ff04
    .db "-int"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTOFF
XT_INTOFF:
    .dw PFA_INTOFF
PFA_INTOFF:
    cli
    jmp_ DO_NEXT
