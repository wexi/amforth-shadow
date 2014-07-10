; ( addr-from addr-to n -- ) 
; Memory
; copy data in RAM from higher to lower addresses.
VE_CMOVE_G:
    .dw $ff06
    .db "cmove>"
    .dw VE_HEAD
    .set VE_HEAD  = VE_CMOVE_G
XT_CMOVE_G:
    .dw PFA_CMOVE_G
PFA_CMOVE_G:
    movw temp1:temp0, xh:xl
    ld xl, Y+			;to
    ld xh, Y+
    ld zl, Y+			;from
    ld zh, Y+
    add xl, tosl
    adc xh, tosh
    add zl, tosl
    adc zh, tosh
    rjmp PFA_CMOVE_G2
PFA_CMOVE_G1:
    ld temp2, -Z
    st -X, temp2
PFA_CMOVE_G2:
    sbiw tosh:tosl,1
    brcc PFA_CMOVE_G1
    movw xh:xl, temp1:temp0
    loadtos
    jmp_ DO_NEXT
