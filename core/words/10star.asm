; ( u1 -- u2 ) 
; Arithmetics
; Unsigned multiplication by 10
VE_10STAR:
	.dw 	$ff03
	.db 	"10*",0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_10STAR
XT_10STAR:
	.dw 	PFA_10STAR
PFA_10STAR:
	lsl 	tosl
	rol 	tosh
	movw	temp1:temp0, tosh:tosl
	lsl 	tosl
	rol 	tosh
	lsl 	tosl
	rol 	tosh
	add	tosl, temp0
	adc	tosh, temp1
	jmp_ 	DO_NEXT
