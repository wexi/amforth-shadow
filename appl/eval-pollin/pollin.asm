; Settings for the pollin eval boards with various atmega's
.include "macros.asm"
.include "device.asm"

  .equ TIBSIZE  = $64    ; 80 characters is one line...
  .equ APPUSERSIZE = 10  ; size of user area

; cpu clock in hertz
.equ F_CPU = @F_CPU@
; baud rate of terminal
.equ BAUD = 9600
.include "drivers/usart@USART@.asm"

.set rstackstart = RAMEND
.set stackstart  = RAMEND - 80

.set NUMWORDLISTS = 8
.include "amforth.asm"
