; This file contains additional words that are placed
; in the NRWW flash section. There is a default file
; called dict_core.inc which contains all essential
; words which is included automatically.
; 
; The next 5 files are always needed but may
; use different implementations for different
; controller types or application setups.

.include "words/store-e.asm"
.include "words/fetch-e.asm"
.include "words/store-i.asm"
.include "words/store-i_nrww.asm"
.include "words/fetch-i.asm"
