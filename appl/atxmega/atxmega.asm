; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

; cpu clock in hertz
.equ F_CPU = 2000000
; baud rate of terminal
.set BAUD = 9600
.equ TERM_USART = USARTE0_base
.equ TERM_USART_PORT = PORTE_base
.include "drivers/usartx.asm"

.include "amforth-low.asm"
