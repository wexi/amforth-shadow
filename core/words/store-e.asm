; ( n e-addr -- ) 
; Memory
; write n (2bytes) to eeprom address
VE_STOREE:
    .dw $ff02
    .db "!e"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREE
XT_STOREE:
    .dw PFA_STOREE
PFA_STOREE:
.if WANT_UNIFIED == 1
    ldi  zh, high(EEPROMEND)
    ldi  zl, low(EEPROMEND)
    cp  tosl, zl
    cpc tosh, zh
    brlt PFA_STOREE0
    brbs 1, PFA_STOREE0
    rjmp PFA_STOREE_OTHER
.endif
PFA_STOREE0:
    movw zl, tosl
    loadtos
    in_ temp2, SREG
    cli
    rcall PFA_FETCHE2
    in_  temp0, EEDR
    cp temp0,tosl
    breq PFA_STOREE3
    rcall PFA_STOREE1
PFA_STOREE3:
    adiw zl,1
    rcall PFA_FETCHE2
    in_  temp0, EEDR
    cp temp0,tosh
    breq PFA_STOREE4
    mov tosl, tosh
    rcall PFA_STOREE1
PFA_STOREE4:
    out_ SREG, temp2
    loadtos
    jmp_ DO_NEXT
    
PFA_STOREE1:
    sbic EECR, EEPE
    rjmp PFA_STOREE1

PFA_STOREE2: ; estore_wait_low_spm:
    in_ temp0, SPMCSR
    sbrc temp0,SPMEN
    rjmp PFA_STOREE2

    out_ EEARH,zh
    out_ EEARL,zl
    out_ EEDR, tosl
    sbi EECR,EEMPE
    sbi EECR,EEPE

    ret
.if WANT_UNIFIED == 1
PFA_STOREE_OTHER:
    adiw zl, 1
    sub tosl, zl
    sbc tosh, zh
    jmp_ PFA_STOREI
.endif
