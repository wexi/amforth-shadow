; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; subtract the size of an address-unit from a-addr1
VE_CELLMINUS:
    .dw $ff05
    .db "cell-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLMINUS
XT_CELLMINUS: .dw pc + 1
  sbiw	tosl, CELLSIZE
  jmp_	DO_NEXT
