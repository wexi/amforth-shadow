; ( addr -- i*x) 
; Stack
; set data stack pointer to addr
VE_SP_STORE:
    .dw $ff03
    .db "sp!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP_STORE
XT_SP_STORE:
    .dw PFA_SP_STORE
PFA_SP_STORE:
    movw yh:yl, tosh:tosl
    loadtos
    jmp_ DO_NEXT
