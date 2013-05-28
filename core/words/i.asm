; ( -- n ) (R: loop-sys -- loop-sys)
; Compiler
; current loop counter
VE_I:
    .dw $FF01
    .db "i",0
    .dw VE_HEAD
    .set VE_HEAD = VE_I
XT_I:
    .dw PFA_R_FETCH

