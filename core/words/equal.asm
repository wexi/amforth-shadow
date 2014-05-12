; ( n1 n2 -- flag )
; Compare
; compares two values for equality
VE_EQUAL:
    .dw $ff01
    .db "=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUAL
XT_EQUAL:
    .dw PFA_EQUAL
PFA_EQUAL:
    ld temp0, Y+
    ld temp1, Y+
    sub tosl, temp0
    brne PFA_EQUAL0	
    sbc tosh, temp1
    breq PFA_EQUAL1
PFA_EQUAL0:
    movw tosl, zerol
    jmp_ DO_NEXT
PFA_EQUAL1:	
    sbiw tosl, 1
    jmp_ DO_NEXT
