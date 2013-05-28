; ( -- )
; Numeric IO
; set base for number conversion to 16
VE_HEX:
    .dw $ff03
    .db "hex",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HEX
XT_HEX:
    .dw DO_COLON
PFA_HEX:
    .dw XT_DOLITERAL
    .dw 16
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT
