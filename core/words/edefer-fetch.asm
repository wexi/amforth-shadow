; ( xt1 -- xt2 ) 
; System
; does the real defer@ for eeprom defers
;VE_EDEFERFETCH:
;    .dw $ff07
;    .db "Edefer@"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_EDEFERFETCH
XT_EDEFERFETCH:
    .dw DO_COLON
PFA_EDEFERFETCH:
    .dw XT_FETCHI
    .dw XT_FETCHE
    .dw XT_EXIT
