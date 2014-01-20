; rdrop ( R: n --), 2rdrop ( R: n1 n2 --)
; Stack
; drop TOR, drop two TORs
VE_RDROP:
    .dw $ff05
    .db "rdrop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RDROP
XT_RDROP:
    .dw PFA_RDROP
;
VE_2RDROP:
    .dw $ff06
    .db "2rdrop"
    .dw VE_HEAD
    .set VE_HEAD = VE_2RDROP
XT_2RDROP:
    .dw PFA_2RDROP
;
PFA_2RDROP:
    pop temp2
    pop temp3
PFA_RDROP:
    pop temp0
    pop temp1
    jmp_ DO_NEXT
