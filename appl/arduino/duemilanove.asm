; for a description, what can be done in this
; file see ../template/template.asm. You may want to
; copy that file to this one and edit it afterwards.

.include "preamble.inc"

.set WANT_IGNORECASE = 1

; cpu clock in hertz
.equ F_CPU = 16000000
.include "drivers/usart_0.asm"

.include "amforth.asm"
