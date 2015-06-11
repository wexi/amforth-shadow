; ( -- ) 
; Tools
; print the version string
VE_VER:
	.dw 	$ff03
	.db 	"ver",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_VER
XT_VER:
	.dw 	DO_COLON
PFA_VER:
	.dw 	XT_ENV_FORTHNAME
	.dw 	XT_ITYPE
	.dw 	XT_SPACE
	.dw 	XT_ENV_FORTHVERSION
	.dw 	XT_ITYPE
	.dw 	XT_SPACE
	.dw 	XT_EXIT
