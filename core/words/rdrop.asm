; (R: n --)
; Stack
; drop TOR
VE_RDROP:
    .dw $ff05
    .db "rdrop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RDROP
XT_RDROP:
    .dw PFA_RDROP
PFA_RDROP:
    pop temp0
    pop temp1
    jmp_ DO_NEXT
