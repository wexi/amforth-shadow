; ( n1 n2 n3 -- n2 n3 n1) 
; Stack
; rotate the three top level cells
VE_ROT:
    .dw $ff03
    .db "rot",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ROT
XT_ROT:
    .dw PFA_ROT
PFA_ROT:			; tosl:h = n3 
    ldd temp0, Y+0
    ldd temp1, Y+1		;temp0:1 = n2
    ldd temp2, Y+2
    ldd temp3, Y+3		;temp2:3 = n1
    std Y+0, tosl
    std Y+1, tosh
    std Y+2, temp0
    std Y+3, temp1
    movw tosl, temp2
    jmp_ DO_NEXT

