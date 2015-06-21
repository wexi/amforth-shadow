; ( -- dest ) 
; Compiler
; places current dictionary position for backward resolves
VE_GMARK:
	.dw 	$ff05
	.db 	">mark",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_GMARK
XT_GMARK:
	.dw 	DO_COLON
PFA_GMARK:
	.dw 	XT_DP
	.dw	XT_DPINC	;place holder
	.dw 	XT_EXIT
    
