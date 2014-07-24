; first the assembly words to keep them
; in a short distance to DO_NEXT
.include "words/n_to_r.asm"
.include "words/n_r_from.asm"
.include "words/d-2star.asm"
.include "words/d-2slash.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/slashmod.asm"
.include "words/abs.asm"
.include "words/pick.asm"
.include "words/cellplus.asm"
.include "dict/interrupt.inc"

; now the relocatable colon words

.include "words/quit.asm"
.include "words/prompts.asm"
.include "words/pause.asm"
.include "words/cold.asm"
.include "words/warm.asm"

.include "words/handler.asm"
.include "words/catch.asm"
.include "words/throw.asm"


.include "words/edefer-fetch.asm"
.include "words/edefer-store.asm"
.include "words/rdefer-fetch.asm"
.include "words/rdefer-store.asm"
.include "words/udefer-fetch.asm"
.include "words/udefer-store.asm"
.include "words/defer-store.asm"
.include "words/defer-fetch.asm"
.include "words/do-defer.asm"

.include "words/d-equal.asm"
.include "words/udot.asm"
.include "words/udotr.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/starslashmod.asm"

.include "words/starslash.asm"
.include "words/uslashmod.asm"
.include "words/negate.asm"
.include "words/slash.asm"
.include "words/mod.asm"

.include "words/min.asm"
.include "words/max.asm"
.include "words/within.asm"

.include "words/show-wordlist.asm"
.include "words/words.asm"


.include "words/is.asm"
.include "words/dotstring.asm"
.include "words/squote.asm"
.include "words/fill.asm"

.include "words/f_cpu.asm"
.include "words/state.asm"
.include "words/base.asm"

.include "words/cells.asm"

.include "words/2dup.asm"
.include "words/2drop.asm"
.include "words/tuck.asm"

.include "words/g_in.asm"
.include "words/sharptib.asm"
.include "words/pad.asm"
.include "words/emit.asm"
.include "words/emitq.asm"
.include "words/key.asm"
.include "words/keyq.asm"

.include "words/dp.asm"
.include "words/ehere.asm"
.include "words/here.asm"
.include "words/allot.asm"

.include "words/bin.asm"
.include "words/decimal.asm"
.include "words/hex.asm"
.include "words/bl.asm"

.include "words/turnkey.asm"
.include "words/to-upper.asm"
.include "words/to-lower.asm"

.include "words/qstack.asm"
.include "words/bounds.asm"
