; ( xt -- ) 
; System
; execute XT
VE_EXECUTE:
	.dw 	$ff07
	.db 	"execute",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_EXECUTE
XT_EXECUTE:
	.dw 	PFA_EXECUTE
PFA_EXECUTE:
	movw 	wl, tosl
	loadtos
	jmp_ 	DO_EXECUTE

VE_QEXECUTE:
	.dw	$ff08
	.db	"?execute"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_QEXECUTE
XT_QEXECUTE:
	.dw	PFA_QEXECUTE
PFA_QEXECUTE:	
	mov 	temp0, tosl
	or 	temp0, tosh
	brne 	PFA_EXECUTE
	loadtos
	jmp_ 	DO_NEXT

