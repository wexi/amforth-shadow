; ( i --  ) 
; Interrupt
; trigger an interrupt
VE_INTTRAP:
    .dw $ff08
    .db "int-trap"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTTRAP
XT_INTTRAP:
    .dw PFA_INTTRAP
PFA_INTTRAP:
    sts intcur, tosl
    loadtos
    set ; set the interrupt flag for the inner interpreter
    jmp_ DO_NEXT
