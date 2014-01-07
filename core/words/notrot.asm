; ( n1 n2 n3 -- n3 n1 n2) 
; Stack
; rotate the three top level cells
VE_NOTROT:
    .dw $ff04
    .db "-rot"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTROT
XT_NOTROT:
    .dw PFA_NOTROT
PFA_NOTROT:			;tosl:h  = n3 
    ldd temp0, Y+0
    ldd temp1, Y+1		;temp0:1 = n2
    ldd temp2, Y+2
    ldd temp3, Y+3		;temp2:3 = n1
    std Y+0, temp2
    std Y+1, temp3
    std Y+2, tosl
    std Y+3, tosh
    movw tosl, temp0
    jmp_ DO_NEXT
