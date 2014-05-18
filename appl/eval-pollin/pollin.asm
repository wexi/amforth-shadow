; for a description, what can be done in this
; file see ../template/template.asm. You may want to
; copy that file to this one and edit it afterwards.

.include "macros.asm"
.include "device.asm"

.equ AMFORTH_RO_SEG = NRWW_START_ADDR+1

; cpu clock in hertz
.equ F_CPU = @F_CPU@
.set BAUD_MAXERROR = 30
.equ TIMER_INT = OVF2addr

.include "drivers/usart@USART@.asm"

; settings for 1wire interface
.equ OW_PORT=PORTB
.EQU OW_BIT=4
.include "drivers/1wire.asm"

.include "amforth.asm"
