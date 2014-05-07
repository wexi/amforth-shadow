.include "macros.asm"
.include "device.asm"

.equ AMFORTH_RO_SEG = NRWW_START_ADDR

.equ TIBSIZE  = $64   ; 80 characters is one line...
.equ APPUSERSIZE = 10 ; size of application user area

; the dictionary search treats lowercase and uppercase
; letters the same. Set to 0 if you do not want it
.set WANT_IGNORECASE = 1

; cpu clock in hertz
.equ F_CPU = 16000000
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart_0.asm"

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.set NUMWORDLISTS = 8
.include "amforth.asm"
