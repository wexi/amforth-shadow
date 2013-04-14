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
PFA_ROT:
    movw temp0, tosl
    ld temp2, Y+
    ld temp3, Y+ 
    loadtos
        
    st -Y, temp3
    st -Y, temp2
    st -Y, temp1
    st -Y, temp0

    jmp_ DO_NEXT
