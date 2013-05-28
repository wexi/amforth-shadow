.include "macros.asm"
.include "device.asm"

.equ TIBSIZE  = $64   ; 80 characters is one line...
.equ APPUSERSIZE = 10 ; size of application user area

; the dictionary search treats lowercase and uppercase
; letters the same. Set to 0 if you do not want it
.set WANT_IGNORECASE = 1

; cpu clock in hertz
.equ F_CPU = 16000000

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.set NUMWORDLISTS = 8
; baud rate of terminal
.equ BAUD = 38400
.include "drivers/usart_0.asm"

.include "amforth.asm"
