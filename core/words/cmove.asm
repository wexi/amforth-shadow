; (addr-from addr-to n -- ) 
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
    push xh
    push xl
    ld zl, Y+
    ld zh, Y+ ; addr-to
    ld xl, Y+
    ld xh, Y+ ; addr-from
    mov temp0, tosh
    or temp0, tosl
    brbs 1, PFA_CMOVE1
PFA_CMOVE2:
    ld temp1, X+
    st Z+, temp1
    sbiw tosl, 1
    brbc 1, PFA_CMOVE2
PFA_CMOVE1:
    pop xl
    pop xh
    loadtos
    jmp_ DO_NEXT
