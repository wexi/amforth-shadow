.include "macros.asm"
.include "device.asm"

; some defaults, can be changed in your application master file
; see template.asm for an example

.set AMFORTH_RO_SEG = NRWW_START_ADDR

.set WANT_ISR_TX = 0
.set WANT_ISR_RX = 1
.set WANT_IGNORECASE = 0
.set WANT_UNIFIED = 0

.set TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.set APPUSERSIZE = 10  ; size of application specific user area in bytes

; addresses of various data segments
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
; change only if you know what to you do
.set NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8
.set NUMRECOGNIZERS = 4 ; total number of recognizers, two are always used.

; 10 per mille (1 per cent) is ok.
.set BAUD = 38400
.set BAUD_MAXERROR = 10

; Dictionary setup
.set VE_HEAD = $0000
.set VE_ENVHEAD = $0000

