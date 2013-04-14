; this dictionary contains optional words
; they may be moved to the core dictionary if needed
.include "dict_minimum.inc"
.include "dict_compiler.inc"
.include "dict_wl.inc"
;.include "dict_mcu.inc"
;.include "dict_vm.inc"
.include "dict_interrupt.inc"

.include "words/d-2star.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/d-equal.asm"
.include "words/udot.asm"
.include "words/udotr.asm"
.include "words/dot-s.asm"

.include "words/dotstring.asm"
.include "words/squote.asm"

.include "words/edefer.asm"
.include "words/rdefer.asm"
.include "words/is.asm"

.include "words/applturnkey.asm"

.include "words/fill.asm"

.include "words/show-wordlist.asm"
.include "words/words.asm"

.include "words/1ms.asm"
.include "words/2literal.asm"
.include "device.inc"
