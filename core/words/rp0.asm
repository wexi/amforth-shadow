; ( -- addr) 
; Stack
; start address of return stack
VE_RP0:
    .dw $ff03
    .db "rp0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RP0
XT_RP0:
    .dw PFA_RP0
PFA_RP0:
    savetos
    movw zh:zl, uph:upl
    ldd tosl, Z+USER_RP0+0
    ldd tosh, Z+USER_RP0+1
    jmp_ DO_NEXT
