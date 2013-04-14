; ( -- ) (R: loop-sys -- ) 
; Compiler
; remove loop-sys, exit the loop and continue execution after it
VE_UNLOOP:
    .dw $ff06
    .db "unloop"
    .dw VE_HEAD
    .set VE_HEAD = VE_UNLOOP
XT_UNLOOP:
    .dw PFA_UNLOOP
PFA_UNLOOP:
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    jmp_ DO_NEXT
