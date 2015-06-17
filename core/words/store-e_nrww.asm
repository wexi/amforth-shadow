; ( x e-addr -- ) 
; Memory
; Write x into the addressed EEPROM cell
VE_DO_STOREE:
	.dw 	$ff04
	.db 	"(!e)"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_DO_STOREE
XT_DO_STOREE:
	.dw 	PFA_DO_STOREE
	
PFA_DO_STOREE:
	movw 	zh:zl, tosh:tosl
	loadtos
	rcall 	PFA_FETCHE1
	in_	temp0, EEDR
	cp 	temp0, tosl
	breq 	PFA_DO_STOREE3
	rcall 	PFA_DO_STOREE1
PFA_DO_STOREE3:
	adiw 	zl, 1
	rcall 	PFA_FETCHE1
	in_	temp1, EEDR
	cp 	temp1, tosh
	breq 	PFA_DO_STOREE2
	mov 	tosl, tosh
	rcall 	PFA_DO_STOREE1
PFA_DO_STOREE2:
	loadtos
	jmp_ 	DO_NEXT
    
PFA_DO_STOREE1:
	sbic 	EECR, EEWE
	rjmp 	PFA_DO_STOREE1
	out_	EEARH, zh
	out_	EEARL, zl
	out_	EEDR, tosl
	in_	temp0, SREG
	cli
	sbi 	EECR, EEMWE
	sbi 	EECR, EEWE
	out_	SREG, temp0
	ret

