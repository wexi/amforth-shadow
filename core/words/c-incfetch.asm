; ( addr -- b' ) 
; Arithmetics
; increment addressed byte and return value
VE_CINCFETCH:
    .dw $ff04
    .db "c++@"
    .dw VE_HEAD
    .set VE_HEAD = VE_CINCFETCH
XT_CINCFETCH:
    .dw PFA_CINCFETCH
PFA_CINCFETCH:
    movw zh:zl, tosh:tosl	;addr
    mov tosh, zeroh
    ld tosl, Z
    inc tosl
    st z, tosl
    jmp_ DO_NEXT
