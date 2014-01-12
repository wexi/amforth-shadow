; ( xt1 xt2 -- ) 
; System
; does the real defer! for eeprom defers
VE_EDEFERSTORE:
    .dw $ff07
    .db "Edefer!"
    .dw VE_HEAD
    .set VE_HEAD = VE_EDEFERSTORE
XT_EDEFERSTORE:
    .dw DO_COLON
PFA_EDEFERSTORE:
    .dw XT_FETCHI
    .dw XT_STOREE
    .dw XT_EXIT
