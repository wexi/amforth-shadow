;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set AMFORTH_NRWW_SIZE=(FLASHEND-AMFORTH_RO_SEG)*2

.set pc_ = pc
.org $0000
  jmp_ PFA_COLD
.org AMFORTH_RO_SEG
.include "amforth-interpreter.asm"
.include "dict/nrww.inc"
.include "dict_appl_core.inc"

.set flashlast = pc
.if (pc>FLASHEND)
  .error "*** Flash size exceeded, please edit your dict_appl_core file to use less space! Aborting."
.endif

.org pc_
.include "drivers/generic-isr.asm"
; lower part of the dictionary
.include "dict/rww.inc"
.include "dict_appl.inc"

.set DPSTART = pc


.dseg
; define a label for the 1st free ram address
HERESTART:
.eseg
.include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EHERESTART:
.cseg
