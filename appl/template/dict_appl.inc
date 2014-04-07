; this file adds words to the RWW section of
; the flash. It is usually the larger part of
; amforth. If you add the file 'dict_core.inc'
; in the file 'dict_appl_core.inc' in this directory
; you need the file 'dict_mcu.inc' here. It adds
; the remaining words from the amforth core system.

; if you defined your own wordlist in dict_appl_core,
; you'll have to configure and add the remaining words
; here as well. In this case do *not* use dict_mcu.inc
; here. 

.include "dict_mcu.inc"

; turnkey is always needed and application spedcific
.include "words/applturnkey.asm"

; print the date and time the amforth hex files are created
; comment the next line if not needed.
.include "words/built.asm"

; now add words which are either not included by default but
; part of amforth (e.g. words for counted strings) or add
; your own ones (from the words directory in this one)
.include "words/place.asm"
.include "words/word.asm"
