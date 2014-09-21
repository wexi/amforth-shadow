; ( -- n ) (R: loop-sys -- loop-sys)
; Compiler
; current loop counter
VE_I:
    .dw $FF01
    .db "i",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I
XT_I:
    .dw PFA_I
PFA_I:
    savetos
    pop tosl
    pop tosh  ; index
    pop zl
    pop zh    ; limit
    push zh
    push zl
    push tosh
    push tosl
    add tosl, zl
    adc tosh, zh
    jmp_ DO_NEXT
