; ( e-addr - n) 
; Memory
; read 1 cell from eeprom
VE_FETCHE:
    .dw $ff02
    .db "@e"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHE
XT_FETCHE:
    .dw PFA_FETCHE
PFA_FETCHE:
.if WANT_UNIFIED == 1
    ldi  zh, high(EEPROMEND)
    ldi  zl, low(EEPROMEND)
    cp  tosl, zl
    cpc tosh, zh
    brlt PFA_FETCHE1
    brbs 1, PFA_FETCHE1
    rjmp PFA_FETCHE_OTHER
.endif
PFA_FETCHE1:
    in_ temp2, SREG
    cli
    movw zl, tosl
    rcall PFA_FETCHE2
    in_ tosl, EEDR

    adiw zl,1

    rcall PFA_FETCHE2
    in_  tosh, EEDR
    out_ SREG, temp2
    jmp_ DO_NEXT

PFA_FETCHE2:
    sbic EECR, EEPE
    rjmp PFA_FETCHE2

    out_ EEARH,zh
    out_ EEARL,zl

    sbi EECR,EERE
    ret

.if WANT_UNIFIED == 1
PFA_FETCHE_OTHER:
    adiw zl, 1
    sub tosl, zl
    sbc tosh, zh
    jmp_ PFA_FETCHI
.endif
