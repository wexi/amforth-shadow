; ( n -- n n ) 
; Stack
; duplicate TOS
VE_DUP:
    .dw $ff03
    .db "dup",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DUP
XT_DUP:
    .dw PFA_DUP
PFA_DUP:
    savetos
    jmp_ DO_NEXT
