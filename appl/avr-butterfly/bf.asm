; Settings for the avr butterfly demo board
.include "macros.asm"
.include "device.asm"
.equ AMFORTH_RO_SEG = NRWW_START_ADDR
.equ TIBSIZE  = $64    ; 80 characters is one line...
.equ APPUSERSIZE = 10  ; size of user area

; cpu clock in hertz
.equ F_CPU = 8000000
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart.asm"

.set NUMWORDLISTS=8

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80
.set WANT_SPI = 1

.include "amforth.asm"
