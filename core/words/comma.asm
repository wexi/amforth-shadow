; ( n -- ) 
; Dictionary
; compile 16 bit into flash at DP
VE_COMMA:
	.dw 	$ff01
	.db 	',', 0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_COMMA
XT_COMMA:
	.dw 	DO_COLON
PFA_COMMA:
	.dw 	XT_DP		;see dp.asm
	.dw 	XT_STOREI
	.dw	XT_DPINC
	.dw 	XT_EXIT
