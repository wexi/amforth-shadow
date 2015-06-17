; ( f-addr -- ) 
; System Value
; Read a cell from flash (template)
VE_FETCHI:
	.dw 	$ff02
	.db 	"@i"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_FETCHI
XT_FETCHI:			;cf. lib/flash.frt, replace by:
	.dw	PFA_DO_FETCHI	;:
	.dw	-1		;fread
	.dw	XT_EXIT		;exit
