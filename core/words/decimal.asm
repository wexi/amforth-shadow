; ( -- ) 
; Numeric IO
; set base for numeric conversion to 10
VE_DECIMAL:
    .dw $ff07
    .db "decimal",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DECIMAL
XT_DECIMAL:
    .dw DO_COLON
PFA_DECIMAL:
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT
