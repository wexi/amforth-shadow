; This is a template for an amforth project.
;
; The order of the entries (esp the include order) must not be
; changed since it is very important that the settings are in the
; right order
;
; note: .set is like a variable, .equ is like a constant
;
; first is to include the macros from the amforth
; directory

.include "macros.asm"

; include the amforth device definition file. These
; files include the *def.inc from atmel internally.
.include "device.asm"

.equ MCUSR = MCUCSR

; The amforth code is split into two segments, one starting
; at address 0 (the RWW area) and one starting in
; the NRWW region. The latter part cannot be changed
; at runtime so it contains most of the core system
; that would never be changed. If unsure what it
; means, leave it as it is. This address may be
; adjusted to give room for other code fragments (e.g.
; bootloaders). The amforth code will start here and may
; occupy all space until flash-end.

.equ AMFORTH_RO_SEG = NRWW_START_ADDR

; now define your own WANT options, if the settings from
; the files included above are not ok. Use the .set
; instruction, not the .equ. e.g.:
;
; .set WANT_XY = 1
;
; there are many WANT options available. There are two
; places where they are defined initially: core/macros.asm 
; and core/devices/<mcutype>/device.asm. Setting the value
; to 1 enables the feature, setting to 0 disables it.
; Most options are disabled by default. You should never
; change the files mentioned above, setting the options here
; is absolutly sufficient.

; the dictionary search treats lowercase and uppercase
; letters the same. Set to 0 if you do not want it
.set WANT_IGNORECASE = 1

; amforth needs two essential parameters
; cpu clock in hertz, 1MHz is factory default
.equ F_CPU = 8000000
.equ TIBSIZE  = $64    ; ANS94 needs at least 80 characters per line
.equ APPUSERSIZE = 10  ; size of application specific user area in bytes

; addresses of various data segments
.set rstackstart = RAMEND      ; start address of return stack, grows downward
.set stackstart  = RAMEND - 80 ; start address of data stack, grows downward
; change only if you know what to you do
.equ NUMWORDLISTS = 8 ; number of word lists in the searh order, at least 8

;
; DRIVER SECTION
; 
; settings for 1wire interface, if desired
.equ OW_PORT=PORTE
.EQU OW_BIT=4
.include "drivers/1wire.asm"

; terminal settings
; check http://amforth.sourceforge.net/recipes/usart-settings.html
; for further information
.set WANT_ISR_RX = 1 ; interrupt driven receive
.set WANT_ISR_TX = 0 ; send slowly but with less code space
; 9600 @ 8N1 is commonly used.
.equ BAUD = 9600
; define which usart to use.
.include "drivers/usart_0.asm"

; include the whole source tree.
.include "amforth.asm"

