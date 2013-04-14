; ( -- ) 
; Numeric IO
; set base for number conversion to 2
VE_BIN:
    .dw $ff03
    .db "bin",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BIN
XT_BIN:
    .dw DO_COLON
PFA_BIN:
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT
