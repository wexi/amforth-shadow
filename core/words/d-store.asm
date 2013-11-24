; ( d addr -- ) 
; Memory
; double-precision store to RAM 
VE_DSTORE:
    .dw $ff02
    .db "d!"
    .dw VE_HEAD
    .set VE_HEAD = VE_DSTORE
XT_DSTORE:
    .dw PFA_DSTORE
PFA_DSTORE:
    movw zl, tosl
    loadtos
    std Z+3, tosh
    std Z+2, tosl
    loadtos
    std Z+1, tosh
    std Z+0, tosl
    loadtos
    jmp_ DO_NEXT
