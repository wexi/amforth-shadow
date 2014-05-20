; this part of the dictionay has to fit into the nrww flash
; section together with the forth inner interpreter

.include "words/exit.asm"
.include "words/execute.asm"
.include "words/dobranch.asm"
.include "words/docondbranch.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/doliteral.asm"
.include "words/dovariable.asm"
.include "words/doconstant.asm"
.include "words/douser.asm"
.include "words/do-value.asm"
.include "words/fetch.asm"
.include "words/store.asm"
.include "words/cstore.asm"
.include "words/cfetch.asm"
.include "words/fetch-u.asm"
.include "words/store-u.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/dup.asm"
.include "words/qdup.asm"
.include "words/swap.asm"
.include "words/over.asm"
.include "words/drop.asm"
.include "words/rot.asm"
.include "words/nip.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/r_from.asm"
.include "words/to_r.asm"
.include "words/r_fetch.asm"


.include "words/notequal.asm"
.include "words/equalzero.asm"
.include "words/lesszero.asm"
.include "words/greaterzero.asm"
.include "words/zero.asm"
.include "words/true.asm"
.include "words/d-greaterzero.asm"
.include "words/d-lesszero.asm"
.include "words/uless.asm"
.include "words/ugreater.asm"


.include "words/log2.asm"
.include "words/minus.asm"
.include "words/plus.asm"
.include "words/mstar.asm"
.include "words/umslashmod.asm"
.include "words/umstar.asm"

.include "words/invert.asm"
.include "words/2slash.asm"
.include "words/2star.asm"
.include "words/and.asm"
.include "words/or.asm"
.include "words/xor.asm"

.include "words/1plus.asm"
.include "words/1minus.asm"
.include "words/lshift.asm"
.include "words/rshift.asm"
.include "words/plusstore.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/rpfetch.asm"
.include "words/rpstore.asm"
.include "words/spfetch.asm"
.include "words/spstore.asm"

.include "words/dodo.asm"
.include "words/doqdo.asm"
.include "words/i.asm"
.include "words/doplusloop.asm"
.include "words/doloop.asm"
.include "words/unloop.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;

.include "words/cmove_g.asm"
.include "words/byteswap.asm"
.include "words/up.asm"
.include "words/1ms.asm"
.include "words/2to_r.asm"
.include "words/2r_from.asm"


.include "words/store-e.asm"
.include "words/fetch-e.asm"
.include "words/store-i.asm"
.if FLASHEND > $10000
  .include "words/store-i_big.asm"
.else
  .include "words/store-i_nrww.asm"
.endif
.include "words/fetch-i.asm"


.if AMFORTH_NRWW_SIZE>8000
.include "dict/core_8k.inc"
.elif AMFORTH_NRWW_SIZE>4000
.include "dict/core_4k.inc"
.elif AMFORTH_NRWW_SIZE>2000
.include "dict/core_2k.inc"
.else
.error "AMFORTH_NRWW_SIZE too small, cannot continue"
.endif
; now colon words
;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/2literal.asm"
.include "words/less.asm"
.include "words/equal.asm"
.include "words/greater.asm"
.include "words/s_to_d.asm"
.include "words/not.asm"
