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
PFA_SWIDO:
	ldiw	Z, intswi
	ld 	temp0, Z	;interrupts: 0 → enabled, 0< → disabled	
	sbrs 	temp0, 7
	jmp_ 	DO_NEXT		;already enabled?
	inc 	temp0
	st	Z, temp0
	bst 	temp0, 7	;update soft interrupts state
	push 	xh
	push 	xl
	ldiw 	X, XT_SWIDONE	
	jmp_ 	DO_NEXT		;let VM serve pending interrupts
;
XT_SWIDONE:
	.dw	XT_SWIDI
	.dw	XT_EXIT

; ( tid -- ) 
; Stack
; Restore stacks before returning to task, etc. A lib/tasks.frt helper.
VE_TASKEN:
	.dw	$ff06
	.db	"..task"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_TASKEN
XT_TASKEN:
	.dw	PFA_TASKEN
PFA_TASKEN:
	movw 	zh:zl, tosh:tosl
	ldd	tosl, Z+8	;8 @u
	ldd	tosh, Z+9
	movw 	yh:yl, tosh:tosl ;sp!
	loadtos
	in	temp0, SREG	;rp!
	cli
	out	SPL, tosl
	out	SPH, tosh
	out	SREG, temp0
	pop	dl		;restore locals
	pop	cl
	pop	ch
	pop	bl
	pop	bh
	pop	al
	pop	ah	
	loadtos
	movw 	uph:upl, zh:zl

PFA_SWIEN:
	ldiw 	Z, intswi
	ld 	temp0, Z	;interrupts: 0 → enabled, 0< → disabled	
	sbrc 	temp0, 7
	inc 	temp0
	st	Z, temp0
	bst 	temp0, 7	;update soft interrupts state
	jmp_ 	DO_NEXTT	;one VM instruction interrupts hold-off
