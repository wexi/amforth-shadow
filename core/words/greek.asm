;;; AmForth-Shadow core/words/greek.asm
;;; A lazy man "locals", aka three Greek locals. Example:
	
;;; : sort  ( α=addr β=length γ=order -- )  (3)  \ loads three locals from stack
;;; Your-Favorite-Algorithm-Using-Greek-Alphabet-Named-Locals  ;
	
;;; Untested: Working under lib/tasks.frt
;;; Unimplemented: "to"
;;; Assumed: A B C D are used by words/greek.asm only. 0 init on "reboot".

;;; Copyright © 2015 Energy Measurement & Control, NJ, USA. 
;;; Redistribution: FreeBSD License.
	
VE_1GREEK:
	.dw	$ff03
	.db	"(1)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_1GREEK
XT_1GREEK:
	.dw	PFA_1GREEK
	
VE_2GREEK:
	.dw	$ff03
	.db	"(2)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_2GREEK
XT_2GREEK:
	.dw	PFA_2GREEK
	
VE_3GREEK:
	.dw	$ff03
	.db	"(3)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_3GREEK
XT_3GREEK:
	.dw	PFA_3GREEK
	
PFA_3GREEK:	
	push	ch		;preserve γ
	push	cl
	movw	ch:cl, tosh:tosl
	loadtos
	inc	dl		;dl ← 1
PFA_2GREEK:
	push	bh		;preserve β
	push	bl
	movw	bh:bl, tosh:tosl
	loadtos
	inc	dl
PFA_1GREEK:
	push	ah		;preserve α
	push	al
	movw	ah:al, tosh:tosl
	loadtos
	push	dl
	ldiw	Z, XT_GREEKS	;restore locals before returning
	push	zh
	push	zl
	jmp_	DO_NEXT

XT_GREEKS:
	.dw	XT_GREEKX
	
XT_GREEKX:			;modified exit
	.dw	PFA_GREEKX
PFA_GREEKX:
	pop	dl
	pop	al
	pop	ah
	dec	dl
	brmi	PFA_GREEKY
	pop	bl
	pop	bh
	dec	dl
	brmi	PFA_GREEKY
	pop	cl
	pop	ch
	dec	dl
PFA_GREEKY:
	inc	dl		;dl ← 0, Greek locals restored too
	pop	xl		;normal exit
	pop	xh
	jmp_	DO_NEXT

VE_ALPHA:
	.dw 	$ff02
	.db 	"α"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_ALPHA
XT_ALPHA:
	.dw 	PFA_ALPHA
PFA_ALPHA:
	savetos
	movw tosh:tosl, ah:al
	jmp_ DO_NEXT

VE_BETA:
	.dw 	$ff02
	.db 	"β"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_BETA
XT_BETA:
	.dw PFA_BETA
PFA_BETA:
	savetos
	movw 	tosh:tosl, bh:bl
	jmp_ 	DO_NEXT

VE_GAMMA:
	.dw 	$ff02
	.db 	"γ"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_GAMMA
XT_GAMMA:
	.dw 	PFA_GAMMA
PFA_GAMMA:
	savetos
	movw 	tosh:tosl, ch:cl
	jmp_ 	DO_NEXT
