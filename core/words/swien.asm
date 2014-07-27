; ( --  )  
; Interrupt
; soft interrupts enable
VE_SWIEN:
    .dw $ff04
    .db "int+"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIEN
XT_SWIEN:
    _pfa_
    sts intswi, zerol
    lds zl, intbuf
    cpse zl, zerol
    set				; set soft interrupts flag
    jmp_ DO_NEXTT		; don't test for SWI
