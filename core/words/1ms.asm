; ( -- )
; Time
; busy waits (almost) exactly 1 millisecond
VE_1MS:
    .dw $ff03
    .db "1ms",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1MS
XT_1MS:
    .dw PFA_1MS
PFA_1MS:
    delay 1000
    jmp_ DO_NEXT
