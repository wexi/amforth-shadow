; ( b addr -- ) 
; Arithmetics
; add b to the addressed byte
VE_CPLUSSTORE:
    .dw $ff03
    .db "c+!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CPLUSSTORE
XT_CPLUSSTORE:
    .dw PFA_CPLUSSTORE
PFA_CPLUSSTORE:
    movw zh:zl, tosh:tosl	;addr
    loadtos			;b
    ld temp0, Z
    add temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
