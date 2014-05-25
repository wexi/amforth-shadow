; ( -- 2 ) 
; Arithmetics
; place 2 on TOS
VE_TWO:
    .dw $ff01
    .db "2",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TWO
XT_TWO:
    .dw PFA_TWO
PFA_TWO:
    savetos
    ldiw tos, 2
    jmp_ DO_NEXT
