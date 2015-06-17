; ( e-addr - n) 
; Memory
; read 1 cell from eeprom
VE_FETCHE:
	.dw 	$ff02
	.db 	"@e"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_FETCHE
XT_FETCHE:
	.dw 	PFA_FETCHE
PFA_FETCHE:
	movw 	zh:zl, tosh:tosl
	rcall 	PFA_FETCHE1
	in_	tosl, EEDR
	adiw 	zh:zl, 1
	rcall	PFA_FETCHE2
	in_	tosh, EEDR
	jmp_	DO_NEXT

PFA_FETCHE1:
	sbic 	EECR, EEWE
	rjmp 	PFA_FETCHE1
PFA_FETCHE2:
	out_	EEARH, zh
	out_	EEARL, zl
	sbi 	EECR, EERE
	ret
