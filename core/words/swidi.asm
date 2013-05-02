; ( --  )  
; Interrupt
; soft interrupts disable
VE_SWIDI:
    .dw $ff04
    .db "int-"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIDI
XT_SWIDI:
    .dw PFA_SWIDI
PFA_SWIDI:
    ldi zl, 255
    sts intswi, zl		; inhibit
    clt				; reset soft interrupts flag
    jmp_ DO_NEXTT		; no need to test for SWI
