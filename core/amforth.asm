;;;; avr forth
;;;;
;;;; GPL V2 (only)

.set pc_ = pc
.org $0000
  jmp_ COLD_START
.org pc_
.include "drivers/generic-isr.asm"
; lower part of the dictionary
.include "dict_appl.inc"

.set DPSTART = pc

.org NRWW_START_ADDR
.include "amforth-interpreter.asm"
.include "dict_appl_core.inc"

.set flashlast = pc
#ifdef BOOFA
.equ FLASHTOP = SMALLBOOTSTART-1
#else
.equ FLASHTOP = FLASHEND
#endif

.if (pc>FLASHTOP)
  .error "*** Flash size exceeded, please edit your dict_appl_core file to use less space! Aborting."
.endif

.dseg
; define a label for the 1st free ram address
HERESTART:
.eseg
.include "amforth-eeprom.inc"
; 1st free address in EEPROM.
EDPSTART:
.cseg
