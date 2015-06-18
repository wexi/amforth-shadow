; ( -- f-addr ) 
; System Value
; address of the next free dictionary cell
VE_DP:
	.dw 	$ff02
	.db 	"dp"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_DP
XT_DP:
	.dw 	PFA_DP1
PFA_DP:
	.dw 	RAM_DP
	.dw 	XT_RDEFERFETCH
	.dw 	XT_RDEFERSTORE
;
PFA_DP1:			;wish compile be faster
	savetos
	ldsw	TOS, RAM_DP
	jmp_	DO_NEXT
	
XT_DPINC:			;"dp 1+ to dp" but faster
	.dw	PFA_DPINC
PFA_DPINC:
	ldsw	Z, RAM_DP
	adiw	zh:zl, 1
	stsw	RAM_DP, Z
	jmp_	DO_NEXT
