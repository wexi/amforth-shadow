; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; subtract the size of an address-unit from a-addr1
VE_CELLMINUS:
    .dw $ff05
    .db "cell-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLMINUS
XT_CELLMINUS:
    .dw DO_COLON
PFA_CELLMINUS:
.if CELLSIZE == 2 ;
    .dw XT_1MINUS
    .dw XT_1MINUS
.else
    .dw XT_DOLITERAL
    .dw CELLSIZE
    .dw XT_MINUS
.endif
    .dw XT_EXIT
; maybe align data?
