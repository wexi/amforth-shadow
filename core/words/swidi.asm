; ( --  )  
; Interrupt
; soft interrupts disable
VE_SWIDI:
	.dw 	$ff04
	.db 	"int-"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_SWIDI
XT_SWIDI:
	.dw	PFA_SWIDI

; lib/tasks.frt helpers
	
VE_TASKEX:
	.dw 	$ff06
	.db 	"task.."
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_TASKEX
XT_TASKEX:
	.dw 	PFA_TASKEX
	
VE_TASKCONT:
	.dw 	$ff05
	.db 	"task.",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_TASKCONT
XT_TASKCONT:
	.dw 	PFA_TASKCONT

VE_TASKPASS:
	.dw 	$ff06
	.db 	".task."
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_TASKPASS
XT_TASKPASS:
	.dw 	PFA_TASKPASS

;;; ------------------------------------------------------------
	
PFA_TASKEX:			;task..
	push	xh		;X  → next XT after pause call
	push	xl
	movw	xh:xl, wh:wl
	adiw	xh:xl, 1	;X → next XT after task.. call
;
	movw 	zh:zl, uph:upl
	savetask
;
	ldd	tosl, Z+2	;TOS = next TCB
	ldd	tosh, Z+3

PFA_SWIDI:			;int-
	lds 	temp0, intswi	;interrupts: 0 → enabled, 0< → disabled
	dec	temp0
	sts	intswi, temp0
	bst 	temp0, 7	;update soft interrupts state
	jmp_ 	DO_NEXTT
	
PFA_TASKPASS:			;.task.
	movw	zh:zl, tosh:tosl
	ldd	tosl, Z+2
	ldd	tosh, Z+3
PFA_TASKCONT:			;task.
	movw	zh:zl, tosh:tosl
	ld	wl, Z+
	ld	wh, Z+
	jmp_	DO_EXECUTE
	
