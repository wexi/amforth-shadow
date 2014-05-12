;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc

.org $0000
  jmp_ PFA_COLD
.org pc_

.include "amforth-interpreter.asm"
.include "drivers/generic-isr.asm"
.set AMFORTH_NRWW_SIZE=(FLASHEND-AMFORTH_RO_SEG)*2
; lower part of the dictionary
.include "dict/rww.inc"
.include "dict_appl.inc"
.include "dict/nrww.inc" ; well, not really nrww, but simplifies things alot
.include "dict_appl_core.inc"


.set DPSTART = pc
.set flashlast = pc

.dseg
HERESTART:
.eseg
.include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EHERESTART:

.cseg
