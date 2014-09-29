; ( n1 n2 -- flag) 
; Compare
; true if n1 is not equal to n2
VE_NOTEQUAL:
    .dw $ff02
    .db "<>"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUAL
XT_NOTEQUAL:
    .dw PFA_NOTEQUAL
PFA_NOTEQUAL:
    ld temp0, Y+
    ld temp1, Y+
    sub tosl, temp0
    sbc tosh, temp1
    breq PFA_NOTEQUAL0
    ldiw tos, -1		;NZ is not "true"
PFA_NOTEQUAL0:
    jmp_ DO_NEXT

