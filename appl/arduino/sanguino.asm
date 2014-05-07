; Settings for the eval board with Atmega8 & 8 MHz
.include "macros.asm"
.include "device.asm"

.equ AMFORTH_RO_SEG = NRWW_START_ADDR

.equ TIBSIZE  = $64    ; 80 characters is one line
.equ APPUSERSIZE = 10  ; size of application specific user area

; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal

.equ BAUD = 9600
.include "drivers/usart_0.asm"
.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.set NUMWORDLISTS = 8

; some registers
.set WANT_PORTA = 0

.include "amforth.asm"
