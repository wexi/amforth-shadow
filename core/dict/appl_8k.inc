.if AMFORTH_RO_SEG > NRWW_START_ADDR
.include "dict/appl_4k.inc"
.exit
.endif

.include "dict_compiler.inc"
