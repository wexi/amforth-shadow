; ( n1 -- n2 ) 
; Arithmetics
; count the Number of 1 bits (population count)
VE_POPCNT:
    .dw $ff06
    .db "popcnt"
    .dw VE_HEAD
    .set VE_HEAD = VE_POPCNT
XT_POPCNT:
    .dw PFA_POPCNT
PFA_POPCNT:
    movw zl, tosl
    clr tosl
    rcall PFA_POPCNT1
    mov zl, zh
    rcall PFA_POPCNT1
    clr tosh
    jmp_ DO_NEXT

PFA_POPCNT1:
    ldi tosh, 8
PFA_POPCNT2:
    ror zl
    ;breq PFA_POPCNT3
    adc tosl, zeroh
    dec tosh
    brne PFA_POPCNT2
POPCNT3:
    ret