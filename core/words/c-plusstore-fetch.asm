; ( b addr -- ) 
; Arithmetic
; add b to the addressed byte
VE_CPLUSSTOREFETCH:
    .dw $ff04
    .db "c+!@"
    .dw VE_HEAD
    .set VE_HEAD = VE_CPLUSSTOREFETCH
XT_CPLUSSTOREFETCH:
    .dw PFA_CPLUSSTOREFETCH
PFA_CPLUSSTOREFETCH:
    movw zh:zl, tosh:tosl	;Z = addr
    loadtos			;TOSL = b
    ld temp0, Z
    add tosl, temp0
    st Z, tosl
    jmp_ DO_NEXT
