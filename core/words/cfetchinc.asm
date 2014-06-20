; ( addr -- b ) 
; Arithmetics
; increment addressed byte, return original value.
VE_CFETCHINC:
    .dw $ff03
    .db "c++",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CFETCHINC
XT_CFETCHINC:
    .dw PFA_CFETCHINC
PFA_CFETCHINC:
    movw zh:zl, tosh:tosl	;addr
    mov tosh, zeroh
    ld tosl, Z
    mov temp0, tosl
    inc temp0
    st z, temp0
    jmp_ DO_NEXT
