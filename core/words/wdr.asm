; ( -- ) 
; MCU
; calls the MCU watch dog reset instruction
VE_WDR:
	.dw 	$ff03
	.db 	"wdr",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_WDR
XT_WDR:
	.dw 	PFA_WDR
PFA_WDR:
	wdr
	jmp_ 	DO_NEXT
