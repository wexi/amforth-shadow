
.if AMFORTH_NRWW_SIZE > 8000
.include "dict/appl_8k.inc"
.elif AMFORTH_NRWW_SIZE > 4000
.include "dict/appl_4k.inc"
.elif AMFORTH_NRWW_SIZE > 2000
.include "dict/appl_2k.inc"
.else
.error "AMFORTH_NRWW_SIZE too small. Cannot continue"
.endif
