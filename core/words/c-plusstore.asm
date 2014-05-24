; ( b addr -- ) 
; Arithmetic
; add b to the addressed byte
VE_CPLUSSTORE:
    .dw $ff03
    .db "c+!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CPLUSSTORE
XT_CPLUSSTORE:
    .dw PFA_CPLUSSTORE
PFA_CPLUSSTORE:
    movw zh:zl, tosh:tosl	;Z = addr
    loadtos			;TOSL = b
    ld temp0, Z
    add tosl, temp0
    st Z, tosl
    loadtos
    jmp_ DO_NEXT
