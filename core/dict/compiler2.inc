; words from this file are optional. They can be
; included almost independently from each other
; on a include-per-use basis
;
.if DICT_COMPILER2 == 0
.set DICT_COMPILER2 = 1

.include "words/set-current.asm"
.include "words/previous.asm"
.include "words/definitions.asm"
.include "words/wordlist.asm"

.include "words/only.asm"
.include "words/forth.asm"
.include "words/forth-wordlist.asm"
.include "words/also.asm"
.include "words/set-order.asm"
.include "words/order.asm"
.include "words/set-recognizer.asm"
.include "words/get-recognizer.asm"
.include "words/code.asm"
.include "words/end-code.asm"
.include "words/marker.asm"
.include "words/postpone.asm"
.endif
