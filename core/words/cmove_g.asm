; (addr-from addr-to n -- ) 
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
    push xh
    push xl
    ld zl, Y+
    ld zh, Y+ ; addr-to
    ld xl, Y+
    ld xh, Y+ ; addr-from
    mov temp0, tosh
    or temp0, tosl
    brbs 1, PFA_CMOVE_G1
    add zl, tosl
    adc zh, tosh
    add xl, tosl
    adc xh, tosh
PFA_CMOVE_G2:
    ld temp1, -X
    st -Z, temp1
    sbiw tosl, 1
    brbc 1, PFA_CMOVE_G2
PFA_CMOVE_G1:
    pop xl
    pop xh
    loadtos
    jmp_ DO_NEXT
