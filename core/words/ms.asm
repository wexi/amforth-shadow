; ( n -- ) 
; Time
; busy waits the specified amount of milliseconds
VE_MS:
    .dw $ff02
    .db "ms"
    .dw VE_HEAD
    .set VE_HEAD = VE_MS
XT_MS:
    .dw DO_COLON
PFA_MS:
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_MS2
PFA_MS1:
    .dw XT_1MS
    .dw XT_DOLOOP
    .dw PFA_MS1
PFA_MS2:
    .dw XT_EXIT
