; ( x1 x2 -- x1 x2 x1 ) 
; Stack
; Place a copy of x1 on top of the stack
VE_OVER:
    .dw $ff04
    .db "over"
    .dw VE_HEAD
    .set VE_HEAD = VE_OVER
XT_OVER:
    .dw PFA_OVER
PFA_OVER:
    savetos
    ldd tosl, Y+2
    ldd tosh, Y+3

    jmp_ DO_NEXT
