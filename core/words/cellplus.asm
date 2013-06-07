; ( a-addr1 -- a-addr2 ) 
; Arithmetics
; add the size of an address-unit to a-addr1
VE_CELLPLUS:
    .dw $ff05
    .db "cell+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLPLUS
XT_CELLPLUS:
    .dw PFA_CELLPLUS
PFA_CELLPLUS:
    adiw tosl, CELLSIZE
    jmp_ DO_NEXT
