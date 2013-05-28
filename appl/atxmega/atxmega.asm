; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64    ; 80 characters is one line...
.equ APPUSERSIZE = 10  ; size of user area
.set stackstart  = RAMEND - 80
.set rstackstart = RAMEND


.equ NUMWORDLISTS = 8

; cpu clock in hertz
.equ F_CPU = 2000000
; baud rate of terminal
.equ BAUD = 9600
.equ TERM_USART = USARTE0_base
.equ TERM_USART_PORT = PORTE_base
.include "drivers/usartx.asm"

.include "amforth-low.asm"
