; ( a-addr u c -- ) 
; Memory
; fill u bytes memory beginning at a-addr with character c
VE_FILL:
	.dw 	$ff04
	.db 	"fill"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_FILL
XT_FILL:
	.dw PFA_FILL

; ( a-addr u -- )
; Memory
; fill with 0s 
VE_ERASE:
	.dw 	$ff05
	.db 	"erase", 0
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_ERASE
XT_ERASE:
	.dw 	PFA_ERASE
PFA_ERASE:
	clr	temp0
	rjmp	PFA_FILL0
PFA_FILL:
	mov 	temp0, tosl	;c
	loadtos
PFA_FILL0:
	movw 	temp2, tosl	;u
	loadtos
	movw 	zh:zl, tosh:tosl ;zh:zl is start address
	add 	temp2, tosl
	adc 	temp3, tosh	;temp2:temp3 is stop address
	loadtos
	rjmp 	PFA_FILL2
PFA_FILL1:
	st 	z+, temp0
PFA_FILL2:
	cpse 	zl, temp2
	rjmp 	PFA_FILL1
	cpse 	zh, temp3
	rjmp 	PFA_FILL1
	jmp_ 	DO_NEXT
