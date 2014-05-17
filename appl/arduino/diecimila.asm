.include "macros.asm"
.include "devices/atmega168/device.asm"

.equ AMFORTH_RO_SEG = NRWW_START_ADDR

.set WANT_IGNORECASE = 1

.equ F_CPU = 16000000
.include "drivers/usart_0.asm"

; include the whole source tree.
.include "amforth.asm"
