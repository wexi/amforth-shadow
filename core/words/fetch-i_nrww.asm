; ( f-addr -- n ) 
; Memory
; Read a cell from flash
VE_DO_FETCHI:
	.dw 	$ff04
	.db 	"(@i)"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_DO_FETCHI
XT_DO_FETCHI:
	.dw 	PFA_DO_FETCHI
PFA_DO_FETCHI:
	movw 	zh:zl, tosh:tosl
	readflashcell tosl,tosh
	jmp_ 	DO_NEXT
