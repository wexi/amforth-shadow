; ( x addr -- ) 
; System Value
; Write x into the addressed RWW flash cell (template)
VE_STOREI:
	.dw 	$ff02
	.db 	"!i"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_STOREI
XT_STOREI:			;cf. lib/flash.frt, replace by:
	.dw	PFA_DO_STOREI	;:
	.dw	-1		;fwrite
	.dw	XT_EXIT		;exit
