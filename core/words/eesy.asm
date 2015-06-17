; ( -- ) 
; System
; Memory alloc pointers sync: RAM → EE
VE_EESY:
	.dw 	$ff04
	.db 	"eesy"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_EESY
XT_EESY:
	.dw 	DO_COLON
PFA_EESY:
	.dw 	XT_DOLITERAL
	.dw 	RAM_DP
	.dw 	XT_FETCH
	.dw 	XT_DOLITERAL
	.dw 	EE_DP
	.dw 	XT_STOREE
	
	.dw 	XT_DOLITERAL
	.dw 	RAM_HERE
	.dw 	XT_FETCH
	.dw 	XT_DOLITERAL
	.dw 	EE_HERE
	.dw 	XT_STOREE
	
	.dw 	XT_DOLITERAL
	.dw 	RAM_EHERE
	.dw 	XT_FETCH
	.dw 	XT_DOLITERAL
	.dw 	EE_EHERE
	.dw 	XT_STOREE
	
	.dw 	XT_EXIT
