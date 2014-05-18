; for a description, what can be done in this
; file see ../template/template.asm. You may want to
; copy that file to this one and edit it afterwards.

.include "preamble.inc"

.equ F_CPU = 16000000
.include "drivers/usart_0.asm"

; settings for 1wire interface, if desired
.equ OW_PORT=PORTB
.EQU OW_BIT=4
.include "drivers/1wire.asm"

.include "amforth.asm"
