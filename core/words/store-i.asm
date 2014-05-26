; ( n addr -- ) 
; System Value
; Deferred action to write a single 16bit cell to flash
VE_STOREI:
    .dw $ff02
    .db "!i"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREI
XT_STOREI:
    .dw PFA_DODEFER1
PFA_STOREI:
    .dw EE_STOREI
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
