; ( c -- (number|) flag ) 
; Numeric IO
; tries to convert a character to a number, set flag accordingly
VE_DIGITQ:
    .dw $ff06 
    .db "digit?"
    .dw VE_HEAD
    .set VE_HEAD = VE_DIGITQ
XT_DIGITQ:
    .dw DO_COLON 
PFA_DIGITQ:
    .dw XT_TOUPPER
    .dw XT_DOLITERAL 
    .dw $30 
    .dw XT_MINUS 
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw $09 
    .dw XT_UGREATER 
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGITQ0 
    .dw XT_DOLITERAL
    .dw $07 
    .dw XT_MINUS 
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw $09 
    .dw XT_ULESSEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGITQ1 
    .dw XT_DROP 
    .dw XT_ZERO
    .dw XT_EXIT 
PFA_DIGITQ1:
PFA_DIGITQ0:
    .dw XT_DUP 
    .dw XT_BASE 
    .dw XT_FETCH 
    .dw XT_UGREATEREQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGITQ2 
    .dw XT_DROP 
    .dw XT_ZERO
    .dw XT_EXIT 
PFA_DIGITQ2:
    .dw XT_TRUE
    .dw XT_EXIT 
