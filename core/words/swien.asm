; ( --  )  
; Interrupt
; Soft interrupts enable
VE_SWIEN:
	.dw 	$ff04
	.db 	"int+"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_SWIEN
XT_SWIEN:
	.dw 	PFA_SWIEN

; ( -- )
; Interrupt
; Process pending soft interrupts
VE_SWIDO:
	.dw	$ff04
	.db	"int*"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_SWIDO
XT_SWIDO:
	.dw	PFA_SWIDO
	
; A lib/tasks.frt helper
	
VE_TASKEN:
	.dw	$ff06
	.db	"..task"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_TASKEN
XT_TASKEN:
	.dw	PFA_TASKEN

;;; ------------------------------------------------------------
	
PFA_SWIDO:			;int*
	lds 	temp0, intswi	;interrupts: 0 → enabled, 0< → disabled	
	sbrs 	temp0, 7
	jmp_ 	DO_NEXT		;already enabled?
	inc 	temp0
	sts	intswi, temp0
	bst 	temp0, 7	;update soft interrupts state
	push 	xh
	push 	xl
	ldiw 	X, XT_SWIDONE	
	jmp_ 	DO_NEXT		;let VM serve pending interrupts
XT_SWIDONE:
	.dw	XT_SWIDI
	.dw	XT_EXIT

PFA_TASKEN:			;..task
	movw	xh:xl, wh:wl	;prepare VM to
	adiw	xh:xl, 1	; exec next XT
	movw 	zh:zl, tosh:tosl
	loadtask

PFA_SWIEN:			;int+
	lds 	temp0, intswi	;interrupts: 0 → enabled, 0< → disabled	
	sbrc 	temp0, 7
	inc 	temp0
	sts	intswi, temp0
	bst 	temp0, 7	;update soft interrupts state
	jmp_ 	DO_NEXTT	;one VM instruction interrupts hold-off
