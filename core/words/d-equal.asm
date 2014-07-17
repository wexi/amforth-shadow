; ( d1 d2 -- flag )
; Compare
; compares two double cell values
VE_DEQUAL:
    .dw $ff02
    .db "d="
    .dw VE_HEAD
    .set VE_HEAD = VE_DEQUAL
XT_DEQUAL:
    .dw PFA_DEQUAL
PFA_DEQUAL:
    ld temp0, Y+
    ld temp1, Y+
    ld temp2, Y+
    ld temp3, Y+
    ld temp4, Y+
    ld temp5, Y+
    sub tosl, temp2
    sbc tosh, temp3
    sbc temp0, temp4
    sbc temp1, temp5
    movw tosh:tosl, zeroh:zerol
    brne PFA_DEQUAL1
    sbiw tosh:tosl, 1
PFA_DEQUAL1:
    jmp_ DO_NEXT
