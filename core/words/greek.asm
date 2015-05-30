;; A lazy man "locals". Example:
	
;; : sort  ( α=addr β=length γ=order -- )  (3)  \ loads three locals from stack
;; Your-Favorite-Algorithm-Using-Greek-Alphabet-Named-Local-Values  ;

;; Copyright © 2015 Energy Measurement & Control, NJ, USA. 
;; Redistribution: FreeBSD License.
	
VE_GREEK1:
	.dw	$ff03
	.db	"(1)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_GREEK1
XT_GREEK1:
	.dw	PFA_GREEK1
	
VE_GREEK2:
	.dw	$ff03
	.db	"(2)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_GREEK2
XT_GREEK2:
	.dw	PFA_GREEK2
	
VE_GREEK3:
	.dw	$ff03
	.db	"(3)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_GREEK3
XT_GREEK3:
	.dw	PFA_GREEK3
	
VE_GREEK4:
	.dw	$ff03
	.db	"(4)",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_GREEK4
XT_GREEK4:
	.dw	PFA_GREEK4
	
PFA_GREEK4:	
	movw	dh:dl, tosh:tosl
	loadtos
PFA_GREEK3:	
	movw	ch:cl, tosh:tosl
	loadtos
PFA_GREEK2:	
	movw	bh:bl, tosh:tosl
	loadtos
PFA_GREEK1:	
	movw	ah:al, tosh:tosl
	loadtos
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

VE_DELTA:
	.dw 	$ff02
	.db 	"δ"
	.dw 	VE_HEAD
	.set 	VE_HEAD = VE_DELTA
XT_DELTA:
	.dw 	PFA_DELTA
PFA_DELTA:
	savetos
	movw 	tosh:tosl, dh:dl
	jmp_ 	DO_NEXT
