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
	
; ( -- tid ) 
; Task
; Saves stacks before leaving task, etc. A lib/tasks.frt helper.
VE_TASKEX:
    .dw $ff06
    .db "task.."
    .dw VE_HEAD
    .set VE_HEAD = VE_TASKEX
XT_TASKEX:
    .dw PFA_TASKEX
PFA_TASKEX:
	savetos
	in	tosl, SPL
	in	tosh, SPH
	savetos
	movw 	zh:zl, uph:upl
	std	z+8, yl
	std	z+9, yh
	ldd	tosl, z+2
	ldd	tosh, z+3

PFA_SWIDI:
	ldiw 	Z, intswi
	ld 	temp0, Z	;interrupts: 0 → enabled, 0< → disabled
	dec 	temp0
	sbrc 	temp0, 7	;avoid wraparound
	st	Z, temp0
	bst 	temp0, 7	;update soft interrupts state
	jmp_ 	DO_NEXTT
