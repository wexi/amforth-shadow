; ( n1 n2 -- d) 
; Arithmetics
; multiply 2 cells to a double cell
VE_MSTAR:
    .dw $ff02
    .db "m*"
    .dw VE_HEAD
    .set VE_HEAD = VE_MSTAR
XT_MSTAR:
    .dw PFA_MSTAR
PFA_MSTAR:
    movw temp0, tosl
    loadtos
    movw temp2, tosl
    ; high cell ah*bh
    muls temp3, temp1
    movw temp4, r0
    ; low cell  al*bl
    mul  temp2, temp0
    movw tosl, r0
    ; signed ah*bl
    mulsu temp3, temp0
    sbc   temp5, zeroh
    add   tosh,  r0
    adc   temp4, r1
    adc   temp5, zeroh
    
    ; signed al*bh
    mulsu temp1, temp2
    sbc   temp5, zeroh
    add   tosh,  r0
    adc   temp4, r1
    adc   temp5, zeroh

    savetos
    movw tosl, temp4
    jmp_ DO_NEXT
