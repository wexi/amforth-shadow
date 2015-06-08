; ( -- addr )
; Interrupt
; Address of Soft Interrupts Status & Control Variable
; lo: nz is overflow mark (= prog addr), hi: nz is inhibit 
VE_INTAPO:			; soft interrupts apostrophe
	.dw 	$ff04
	.db 	"int'"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_INTAPO
XT_INTAPO:
	.dw 	PFA_DOVARIABLE
PFA_INTAPO:
	.dw 	intovf

; ( -- flag )
; Interrupt
; Returns true if soft interrupts are enabled
VE_SWICK:
	.dw	$ff04
	.db	"int?"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_SWICK
XT_SWICK:
	.dw	PFA_SWICK
PFA_SWICK:
	savetos
	movw	tosh:tosl, zeroh:zerol
	brts	PFA_SWICK1
	sbiw	tosh:tosl, 1
PFA_SWICK1:
	jmp_ 	DO_NEXT
