; ( -- ) 
; Dictionary
; makes an entry in a wordlist visible, if not already done.
VE_REVEAL:
	.dw 	$ff06
	.db 	"reveal"
	.dw VE_HEAD
	.set VE_HEAD = VE_REVEAL
XT_REVEAL:
	.dw DO_COLON
PFA_REVEAL:
	.dw	XT_DOLITERAL
	.dw	COLON_SMUDGE+4
	.dw	XT_FETCH
	.dw	XT_DOCONDBRANCH
	.dw 	PFA_REVEAL1	;0 nesting?
	.dw	XT_ONE		;anonymous
	.dw	XT_DOLITERAL
	.dw	COLON_SMUDGE+4
	.dw	XT_MINUSSTORE
	.dw	XT_EESY
	.dw 	XT_EXIT

PFA_REVEAL1:
	.dw 	XT_DOLITERAL
	.dw 	COLON_SMUDGE+0
	.dw 	XT_FETCH
	.dw 	XT_DOLITERAL
	.dw 	COLON_SMUDGE+2
	.dw 	XT_FETCH	; ( NFA WID )
	.dw 	XT_STOREE
	.dw	XT_EESY
	.dw 	XT_EXIT

; ( -- wid )
; Dictionary
; A newly created word may need to know its word-list membership:
VE_WILD:
	.dw 	$ff04
	.db 	"wild"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_WILD
XT_WILD:
	.dw	PFA_WILD
PFA_WILD:
	savetos
	ldiw 	Z, COLON_SMUDGE+2
	ld	tosl, z+
	ld	tosh, z+
	jmp_ 	DO_NEXT
	
