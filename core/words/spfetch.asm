; (  -- addr ) 
; Stack
; current data stack pointer
VE_SP_FETCH:
    .dw $ff03
    .db "sp@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP_FETCH
XT_SP_FETCH:
    .dw PFA_SP_FETCH
PFA_SP_FETCH:
    savetos
    movw tosl, yl
    jmp_ DO_NEXT
