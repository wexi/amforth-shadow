
.if AMFORTH_NRWW_SIZE>8000
.include "dict/core_8k.inc"
.elif AMFORTH_NRWW_SIZE>4000
.include "dict/core_4k.inc"
.elif AMFORTH_NRWW_SIZE>2000
.include "dict/core_2k.inc"
.else
.error "AMFORTH_RO_SEG too small, cannot continue"
.endif
