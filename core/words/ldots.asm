; -*- Coding: utf-8 -*-
	
/*	
   Display DP value in hexadecimal format. "…" is an immediate word
   for use in compile mode. It precedes a forward referenced name. See
   amforth-shell.py
*/
	
VE_LDOTS:
.dw	$0003			;immediate
.db	"…",0			;this utf-8 entry can't be accidental...
.dw	VE_HEAD
.set	VE_HEAD = VE_LDOTS
XT_LDOTS:
.dw	DO_COLON
.dw	XT_DOSLITERAL
.dw	2
.db	"0x"
.dw	XT_ITYPE		;for easy eval()
.dw	XT_DP
.dw	XT_WHEX
.dw	XT_SPACE		;for next forward reference on same line
.dw	XT_EXIT	
	
VE_WHEX:
	.dw	$ff04
	.db	"whex"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_WHEX
XT_WHEX:
.dw	DO_COLON
.dw	XT_BYTESPLIT
.dw	XT_BHEX
.dw	XT_BHEX
.dw	XT_EXIT
	
VE_BHEX:
	.dw	$ff04
	.db	"bhex"
	.dw	VE_HEAD
	.set	VE_HEAD = VE_BHEX
XT_BHEX:
.dw	DO_COLON
.dw	XT_NIBBLESPLIT
.dw	XT_NHEX
.dw	XT_EMIT
.dw	XT_NHEX
.dw	XT_EMIT
.dw	XT_EXIT
	
VE_NIBBLESPLIT:
.dw	$ff03
.db	"c||",0
.dw	VE_HEAD
.set	VE_HEAD = VE_NIBBLESPLIT
XT_NIBBLESPLIT:
.dw	pc + 1
	mov	temp0,tosl
	andi	tosl,15
	savetos
	mov	tosl,temp0
	swap	tosl
	andi	tosl,15
	jmp_	DO_NEXT

XT_NHEX:
.dw	pc + 1
	cpi	tosl,10
	brlo	NHEX
	subi	tosl,-7		;+= ord('A') - ord('9') - 1
NHEX:	subi	tosl,-48	;+= ord('0')
	jmp_	DO_NEXT
