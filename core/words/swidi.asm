; ( --  )  
; Interrupt
; soft interrupts disable
VE_SWIDI:
    .dw $ff04
    .db "int-"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIDI
XT_SWIDI:
    .dw	PFA_SWIDI
PFA_SWIDI:
    ldiw z, intswi
    ld	temp0, z
    dec	temp0			; 0< indicates inhibit
    st	z, temp0
    clt				; reset soft interrupts flag
    jmp_ DO_NEXTT		; no need to test for SWI
