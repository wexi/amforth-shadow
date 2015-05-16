; ( --  )  
; Interrupt
; Soft interrupts enable
VE_SWIEN:
    .dw $ff04
    .db "int+"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIEN
XT_SWIEN:
    .dw PFA_SWIEN

; ( -- )
; Interrupt
; Process pending soft interrupts
VE_SWIDO:
    .dw $ff04
    .db "int*"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIDO
XT_SWIDO:
    .dw PFA_SWIDO
PFA_SWIDO:
    ldiw Z, intswi
    ld temp0, Z
    cpi temp0, -1
    breq PFA_SWIEN1		; shallow disable?
    brlt PFA_SWIEN2		; deep disable?
    jmp_ DO_NEXT		; interrupts enabled
	
; ( tid -- ) 
; Stack
; Restore stacks before returning to task, etc. A lib/tasks.frt helper.
VE_TASKEN:
    .dw $ff06
    .db "..task"
    .dw VE_HEAD
    .set VE_HEAD = VE_TASKEN
XT_TASKEN:
    .dw PFA_TASKEN
PFA_TASKEN:
    movw zh:zl, tosh:tosl
    ldd	tosl, z+8	; 8 @u
    ldd	tosh, z+9
    movw yh:yl, tosh:tosl ; sp!
    loadtos
    in	temp0, SREG	; rp!
    cli
    out	SPL, tosl
    out	SPH, tosh
    out	SREG, temp0
    loadtos
    movw uph:upl, zh:zl

PFA_SWIEN:
    ldiw Z, intswi
    ld temp0, Z			; interrupts: 0 → enabled, 0< → disabled	
    sbrs temp0, 7
    jmp_ DO_NEXT		; already enabled
    inc temp0
    st Z, temp0
    brmi PFA_SWIEN2		; still disabled?
PFA_SWIEN1:
    ldd temp0, Z+1		; resume interrupt processing, check intbuf
    cpse temp0, zerol
    set
PFA_SWIEN2:
    jmp_ DO_NEXTT
