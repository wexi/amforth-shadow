; ( --  ) 
; Compiler
; enter interpreter mode
VE_LBRACKET:
	.dw	$0001
	.db	"[",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_LBRACKET
XT_LBRACKET:
	.dw	PFA_LBRACKET
	
VE_LLBRACKET:			;literal left bracket is just a synonym
	.dw	$0001
	.db	"{",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_LLBRACKET
XT_LLBRACKET:
	.dw	PFA_LBRACKET
;
PFA_LBRACKET:
	ldiw	Z, ram_state
	st	Z+, zerol
	st	Z+, zeroh
	jmp_	DO_NEXT
