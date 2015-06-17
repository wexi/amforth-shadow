; ( -- wid ) (C: "<spaces>name" -- )
; Compiler
; create a wordlist id (wid) as a constant in the dictionary
VE_VOCABULARY:
	.dw 	$ff0a
	.db 	"vocabulary"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_VOCABULARY
XT_VOCABULARY:
	.dw DO_COLON
PFA_VOCABULARY:
	.dw 	XT_WORDLIST
	.dw 	XT_DOCREATE
	.dw 	XT_COMPILE
	.dw 	PFA_DOVARIABLE
	.dw 	XT_COMMA
	.dw 	XT_REVEAL
	.dw 	XT_EXIT

