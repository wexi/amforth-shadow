; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; subtract the size of an address-unit from a-addr1
VE_CELLMINUS:
    .dw $ff05
    .db "cell-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLMINUS
XT_CELLMINUS:
    .dw PFA_CELLMINUS
;
VE_TWOMINUS:
    .dw $ff02
    .db "2-"
    .dw VE_HEAD
    .set VE_HEAD = VE_TWOMINUS
XT_TWOMINUS:
    .dw PFA_CELLMINUS
;
PFA_CELLMINUS:	
	sbiw	tosl, CELLSIZE
	jmp_	DO_NEXT
