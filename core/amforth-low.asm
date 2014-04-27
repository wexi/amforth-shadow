;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc

.org $0000
  jmp_ PFA_COLD
.org pc_

.include "amforth-interpreter.asm"
.include "drivers/generic-isr.asm"

; lower part of the dictionary
.include "dict/rww.inc"
.include "dict_appl.inc"
.include "dict_core.inc"
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
