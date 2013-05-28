; ( xu ... x1 x0 u -- xu ... x1 x0 xu ) 
; Stack
; access the stack as an array and fetch the u-th element as new TOS
VE_PICK:
    .dw $ff04
    .db "pick"
    .dw VE_HEAD
    .set VE_HEAD = VE_PICK
XT_PICK:
    .dw PFA_PICK
PFA_PICK:
    movw zl, yl
    lsl tosl
    rol tosh
    add  zl,tosl
    adc  zh,tosh
    ld   tosl, Z
    ldd  tosh, Z+1
    jmp_ DO_NEXT
