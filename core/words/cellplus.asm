; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; add the size of an address-unit to a-addr1
VE_CELLPLUS:
    .dw $ff05
    .db "cell+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLPLUS
XT_CELLPLUS:
    .dw DO_COLON
PFA_CELLPLUS:
.if CELLSIZE == 2 ;
    .dw XT_1PLUS
    .dw XT_1PLUS
.else
    .dw XT_DOLITERAL
    .dw CELLSIZE
    .dw XT_PLUS
.endif
    .dw XT_EXIT
; maybe align data?
