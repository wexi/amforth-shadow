; ( n addr -- ) 
; Memory
; write n to RAM memory at addr, low byte first
VE_STORE:
    .dw $ff01
    .db "!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STORE
XT_STORE:
    .dw PFA_STORE
PFA_STORE:
.if WANT_UNIFIED == 1
    ldi  zh, high(RAMEND)
    ldi  zl, low(RAMEND)
    cp  tosl, zl
    cpc tosh, zh
    brlt PFA_STORERAM
    brbs 1, PFA_STORERAM
    rjmp PFA_STOREOTHER
.endif
PFA_STORERAM:
    movw zl, tosl
    loadtos
    ; the high byte is written before the low byte
    std Z+1, tosh
    std Z+0, tosl
    loadtos
    jmp_ DO_NEXT
.if WANT_UNIFIED == 1
PFA_STOREOTHER:
    adiw zl, 1
    sub tosl, zl
    sbc tosh, zh
    jmp_ PFA_STOREE
.endif
