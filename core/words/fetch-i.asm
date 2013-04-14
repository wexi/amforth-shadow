; ( f-addr -- n1 ) 
; Memory
; read 1 cell from flash
VE_FETCHI:
    .dw $ff02
    .db "@i"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHI
XT_FETCHI:
    .dw PFA_FETCHI
PFA_FETCHI:
    movw zl, tosl
    readflashcell tosl,tosh
    jmp_ DO_NEXT
