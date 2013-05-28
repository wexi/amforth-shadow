; ( a-addr -- n ) 
; Memory
; read 1 cell from RAM address
VE_FETCH:
    .dw $ff01
    .db "@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCH
XT_FETCH:
    .dw PFA_FETCH
PFA_FETCH:
.if WANT_UNIFIED == 1
    ldi  zh, high(RAMEND)
    ldi  zl, low(RAMEND)
    cp  tosl, zl
    cpc tosh, zh
    brlt PFA_FETCHRAM
    brbs 1, PFA_FETCHRAM
    rjmp PFA_FETCHOTHER
.endif
PFA_FETCHRAM:
    movw zl, tosl
    ; low byte is read before the high byte
    ld tosl, z+
    ld tosh, z+
    jmp_ DO_NEXT
.if WANT_UNIFIED == 1
PFA_FETCHOTHER:
    adiw zl, 1
    sub tosl, zl
    sbc tosh, zh
    jmp_ PFA_FETCHE
.endif
