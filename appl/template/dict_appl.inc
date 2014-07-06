
; This file contains definitions which are either
; optional or application specific. They are placed
; in the RWW flash section.

; The file dict/compiler2.inc contains a number of
; non-essential words with compiler functionality.
; It is recoomended but not strictly necessairy
; to include it. It is already included by default
; on atmegas with 8k boot loader sections, but it is
; safe to include this file twice.

.include "dict/compiler2.inc"

; turnkey is always needed and application specific
.include "words/applturnkey.asm"

; the command .s has many flavors. the one in the
; core directory prints the TOS on the *left* hand side.
; lib/tools/dot-s.frt has a .s for the opposite.
.include "words/dot-s.asm"

; print the date and time the amforth hex files are created
; comment the next line if not needed.
.include "words/built.asm"

; now add words which are either not included by default but
; part of amforth (e.g. words for counted strings) or add
; your own ones (from the words directory in this one)
.include "words/place.asm"
.include "words/word.asm"
