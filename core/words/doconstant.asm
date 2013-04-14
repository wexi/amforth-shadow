; ( -- addr )
; System
; place data field address on TOS
;VE_DOCONSTANT:
;    .dw $ff0a
;    .db "(constant)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCONSTANT
XT_DOCONSTANT:
    .dw PFA_DOCONSTANT
PFA_DOCONSTANT:
    savetos
    movw tosl, wl
    adiw tosl, 1
    jmp_ DO_NEXT
