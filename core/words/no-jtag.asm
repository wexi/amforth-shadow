; ( -- ) 
; MCU
; disable jtag at runtime
VE_NOJTAG:
    .dw $FF05
    .db "-jtag",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOJTAG
XT_NOJTAG:
    .dw PFA_NOJTAG
PFA_NOJTAG:
    cli
    .ifdef MCUCSR
    in_ temp0, MCUCSR
    .else
    in_ temp0, MCUCR
    .endif

    ori temp0, ( 1<<JTD)

    .ifdef MCUCSR
    out_ MCUCSR, temp0
    out_ MCUCSR, temp0     ; needs to be done twice within 4 cycles
    .else
    out_ MCUCR, temp0
    out_ MCUCR, temp0     ; needs to be done twice within 4 cycles
    .endif
    sei
    jmp_ DO_NEXT
