; ( -- addr) 
; Stack
; start address of the data stack
VE_SP0:
    .dw $ff03
    .db "sp0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SP0
XT_SP0:
    .dw PFA_SP0
PFA_SP0:
    savetos
    movw zh:zl, uph:upl
    ldd tosl, Z+USER_SP0+0
    ldd tosh, Z+USER_SP0+1
    jmp_ DO_NEXT

; ( -- addr) 
; Stack
; address of user variable to store top-of-stack for inactive tasks
VE_SP:
    .dw $ff02
    .db "sp"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP
XT_SP:
    .dw PFA_DOUSER
PFA_SP:
    .dw USER_SP
