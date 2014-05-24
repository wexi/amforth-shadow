; ( -- 1 ) 
; Arithmetics
; place a value 1 on TOS
VE_ONE:
    .dw $ff01
    .db "1",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ONE
XT_ONE:
    .dw PFA_ONE
PFA_ONE:
    savetos
    ldiw tos, 1
    jmp_ DO_NEXT
