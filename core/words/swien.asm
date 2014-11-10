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
    lds temp0, intswi
    cpi temp0, -1
    brlt PFA_SWIDO1		; nested critical section?
    ldiw z, intbuf
    ld temp0, z
    cpse temp0, zerol
    jmp_ ON_INTERRUPT		; serve pending
PFA_SWIDO1:
    jmp_ DO_NEXTT    		; non pending
	
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
