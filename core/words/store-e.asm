; ( x e-addr -- ) 
; Memory
; Write x into the addressed EEPROM cell (template)
VE_STOREE:
	.dw 	$ff02
	.db 	"!e"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_STOREE
XT_STOREE:			;cf. lib/flash.frt, replace by:
	.dw 	PFA_DO_STOREE	;:
	.dw	-1		;flush
	.dw	XT_DO_STOREE	;(!e)
	.dw	XT_EXIT		;exit
