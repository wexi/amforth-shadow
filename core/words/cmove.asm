; ( addr-from addr-to u -- ) 
; Memory
; copy data in RAM, from lower to higher addresses
VE_CMOVE:
    .dw $ff05
    .db "cmove",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_CMOVE
XT_CMOVE:
    .dw PFA_CMOVE
PFA_CMOVE:
    movw temp1:temp0, xh:xl
    ld xl, Y+			;to
    ld xh, Y+
    ld zl, Y+			;from
    ld zh, Y+
    rjmp PFA_CMOVE2
PFA_CMOVE1:
    ld temp2, Z+
    st X+, temp2
PFA_CMOVE2:
    sbiw tosh:tosl,1
    brcc PFA_CMOVE1
    movw xh:xl, temp1:temp0
    loadtos
    jmp_ DO_NEXT
