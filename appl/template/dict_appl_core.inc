; All files included here (directly or via
; other include files) go to the NRWW section
; starting at address AMFORTH_RO_SEG. The flle
; 'dict_core.inc' assumes that this address is
; identical to the NRWW start address. It places
; as much words as possible into this unchangable 
; section.
; If you use this include file, it is strongly
; recommended to include the file 'dict_mcu.inc' in 
; the 'dict_appl.inc' from this directory as well
; It has the remaining words that could not be
; added to the NRWW section due to size limitation.
;
; if you change AMFORTH_RO_SEG to different value
; than NRWW_START, do *not* use the file dict_core.inc
; In this case select your own word list. This can be
; sometimes tricky since some assembly words *need*
; to be close to the interpreter code. Watch for 
; error messages from the assembler and fix *all*. 

.include "dict_core.inc"


; these 5 files are almost always used as well.
; They have to go to the NRWW section. Always.
.include "words/store-e.asm"
.include "words/fetch-e.asm"
.include "words/store-i.asm"
.include "words/store-i_nrww.asm"
.include "words/fetch-i.asm"
