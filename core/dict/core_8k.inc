
.include "words/n_to_r.asm"
.include "words/n_r_from.asm"

.include "words/d-2star.asm"
.include "words/d-2slash.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/d-equal.asm"
.include "words/udot.asm"
.include "words/udotr.asm"

.include "words/show-wordlist.asm"
.include "words/words.asm"
.include "dict/interrupt.inc"

.include "words/pick.asm"
.include "words/is.asm"

.include "words/dotstring.asm"
.include "words/squote.asm"

.include "words/fill.asm"

.include "words/environment.asm"
.include "words/env-wordlists.asm"
.include "words/env-slashpad.asm"
.include "words/env-slashhold.asm"
.include "words/env-forthname.asm"
.include "words/env-forthversion.asm"
.include "words/env-cpu.asm"
.include "words/env-mcuinfo.asm"
.include "words/env-usersize.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/f_cpu.asm"
.include "words/state.asm"
.include "words/base.asm"

.include "words/cells.asm"
.include "words/cellplus.asm"

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/slashmod.asm"
.include "words/uslashmod.asm"
.include "words/negate.asm"
.include "words/slash.asm"
.include "words/mod.asm"
.include "words/abs.asm"
.include "words/min.asm"
.include "words/max.asm"
.include "words/within.asm"

.include "words/to-upper.asm"
.include "words/to-lower.asm"
;;;;;;;;;;;;;;;;;;;;;;
.include "words/hld.asm"
.include "words/hold.asm"
.include "words/l_sharp.asm" ; <#
.include "words/sharp.asm"
.include "words/sharp_s.asm"
.include "words/sharp_g.asm" ; #>
.include "words/sign.asm"
.include "words/ddotr.asm"
.include "words/dotr.asm"
.include "words/ddot.asm"
.include "words/dot.asm"
.include "words/uddot.asm"
.include "words/uddotr.asm"
.include "words/udslashmod.asm"
.include "words/digitq.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/do-sliteral.asm"
.include "words/scomma.asm"
.include "words/itype.asm"
.include "words/icount.asm"
.include "words/cr.asm"
.include "words/space.asm"
.include "words/spaces.asm"
.include "words/type.asm"
.include "words/tick.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/handler.asm"
.include "words/catch.asm"
.include "words/throw.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/char-skip.asm"
.include "words/accept.asm"
.include "words/refill.asm"
.include "words/char.asm"
.include "words/number.asm"
.include "words/to-number.asm"
.include "words/parse.asm"
.include "words/char-scan.asm"
.include "words/source.asm"
.include "words/slashstring.asm"
.include "words/parse-name.asm"
.include "words/find-name.asm"

.include "words/quit.asm"
.include "words/prompts.asm"
.include "words/pause.asm"
.include "words/cold.asm"
.include "words/warm.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/sp0.asm"
.include "words/rp0.asm"
.include "words/depth.asm"
.include "words/interpret.asm"
.include "words/do-recognizer.asm"
.include "words/r-intnumber.asm"
.include "words/r-find.asm"
.include "words/r-fail.asm"

.include "words/qstack.asm"
.include "words/ver.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/noop.asm"
.include "words/unused.asm"

.include "words/to.asm"

.include "words/edefer-fetch.asm"
.include "words/edefer-store.asm"
.include "words/rdefer-fetch.asm"
.include "words/rdefer-store.asm"
.include "words/udefer-fetch.asm"
.include "words/udefer-store.asm"
.include "words/defer-store.asm"
.include "words/defer-fetch.asm"
.include "words/do-defer.asm"

.include "words/search-wordlist.asm"
.include "words/traverse-wordlist.asm"
.include "words/icompare.asm"

.include "words/star.asm"
.include "words/j.asm"

.include "words/d_to_s.asm"
.include "words/dabs.asm"
.include "words/dnegate.asm"
.include "words/cmove.asm"
.include "words/2swap.asm"

.include "words/tib.asm"

.include "words/init-user.asm"
.include "dict/compiler2.inc"
.include "words/bounds.asm"
