; ( --  )  
; Interrupt
; soft interrupts enable
VE_SWIEN:
    .dw $ff04
    .db "int+"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIEN
XT_SWIEN:
    .dw	PFA_SWIEN
PFA_SWIEN:
    ldiw z, intswi
    ld	temp0, z
    cpse temp0, zerol
    inc	temp0			; 0= → ints on, 0< → ints off
    st	z, temp0
    tst	temp0
    brmi PFA_SWIEN1		; # int+ < # int- ?
    lds zl, intbuf
    cpse zl, zerol
    set				; set soft interrupts flag
PFA_SWIEN1:
    jmp_ DO_NEXTT		; let next VM instr exec without SWI
