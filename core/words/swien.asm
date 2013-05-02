; ( --  )  
; Interrupt
; soft interrupts enable
VE_SWIEN:
    .dw $ff04
    .db "int+"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIEN
XT_SWIEN:
    .dw PFA_SWIEN
PFA_SWIEN:
    sts intswi, zerol
    lds zl, intbuf
    tst zl
    breq PFA_SWIEN1
    set				; set soft interrupts flag
PFA_SWIEN1:
    jmp_ DO_NEXTT		;don't test for SWI
