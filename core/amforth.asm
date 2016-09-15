; -*- Coding: utf-8 -*-

.set	AMFORTH_NRWW_SIZE=(FLASHEND-AMFORTH_RO_SEG)*2

.set	corepc = pc
.org	$0000
	jmp_	COLD_START

.org 	corepc
.include "drivers/generic-isr.asm"
; lower part of the dictionary
.include "dict/rww.inc"
.include "dict_appl.inc"

.set 	DPSTART = pc
.if 	pc > AMFORTH_RO_SEG
.error	"RWW Segment Overflow, edit your dict_appl.inc to use less space!"
.endif

.org 	AMFORTH_RO_SEG
.include "amforth-interpreter.asm"
.include "dict/nrww.inc"
.include "dict_appl_core.inc"

.if 	FLASHEND == 0xFFFF
	
; Unresolved forward reference (ffff) restart
	
FFFF:	sbiw	xh:xl,1		
	movw	ah:al,xh:xl	;α = ffff location
	ldiw	x,PFA_FFFF
	jmp_	DO_NEXT
PFA_FFFF:
.dw	XT_SWIDI		;int-
.dw	XT_WDTON		;+wdt
.dw	XT_WDR			;wdr
.dw	XT_DOSLITERAL
.dw	8	
.db	"α see",13,10		;\1 see  ( where ffff occurred )
.dw 	XT_ITYPE	
PFA_GGGG:
.dw	XT_DOBRANCH		;wait for watchdog
.dw	PFA_GGGG	

.org 	0xFFFB
VE_FFFF:
.dw 	$FF04
.db 	"ffff"
.dw 	VE_HEAD
.set 	VE_HEAD = VE_FFFF
.dw 	FFFF		      ;pc = 0xFFFF, FLASHEND must be
.org	DPSTART		      ;to avoid later .cseg warning
	
.elif 	pc > FLASHEND
.error "*** Flash size exceeded, edit your dict_appl_core file to use less space!"
.endif

.dseg
; define a label for the 1st free ram address
HERESTART:
.eseg
.include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EHERESTART:
