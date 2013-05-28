; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64 ; 80 characters is one line...
.equ APPUSERSIZE = 2  ; size of user area

.equ NUMWORDLISTS = 8

; cpu clock in hertz
.equ F_CPU = 14745600
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart_1.asm"

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.include "amforth-low.asm"
