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

; ( u1 u2 -- flag ) 
; Compare
; compare two unsigned numbers, returns true flag if u1 is less then or equal to u2
VE_ULESSEQUAL:
    .dw $ff03 
    .db "u<=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ULESSEQUAL
XT_ULESSEQUAL:
    .dw DO_COLON 
PFA_ULESSEQUAL:
    .dw XT_UGREATER 
    .dw XT_INVERT 
    .dw XT_EXIT 

; ( u1 u2 -- flag ) 
; Compare
; compare two unsigned numbers, returns true flag if u1 is greater then or equal to u2
VE_UGREATEREQUAL:
    .dw $ff03 
    .db "u>=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UGREATEREQUAL
XT_UGREATEREQUAL:
    .dw DO_COLON 
PFA_UGREATEREQUAL:
    .dw XT_ULESS 
    .dw XT_INVERT 
    .dw XT_EXIT 
