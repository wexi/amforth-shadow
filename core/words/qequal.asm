; ( n1 n2 -- n1 false | true )
; Compare twisted
; typically, n1 is the unknown, n2 the test value
VE_QEQUAL:
    .dw $ff02
    .db "?="
    .dw VE_HEAD
    .set VE_HEAD = VE_QEQUAL
XT_QEQUAL:
    .dw PFA_QEQUAL
PFA_QEQUAL:
    ldd temp0, Y+0		;temp0 = low n1
    sub tosl, temp0
    brne PFA_QEQUAL0
    ldd temp1, Y+1		;temp1 = high n1
    sbc tosh, temp1
    breq PFA_QEQUAL1
PFA_QEQUAL0:
    movw tosl, zerol
    jmp_ DO_NEXT
PFA_QEQUAL1:
    adiw Y, 2
    sbiw tosl, 1
    jmp_ DO_NEXT
