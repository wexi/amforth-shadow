; ( --  )  
; Interrupt
; turns on all interrupts
VE_INTON:
    .dw $ff04
    .db "+int"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTON
XT_INTON:
    .dw PFA_INTON
PFA_INTON:
    sei
    jmp_ DO_NEXT
