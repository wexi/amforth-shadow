; ( "<spaces>name" -- XT ) 
; Dictionary
; search dictionary for name, return XT or throw an exception -13
VE_TICK:
    .dw $ff01
    .db "'",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICK
XT_TICK:
    .dw DO_COLON
PFA_TICK:
    .dw XT_PARSENAME
    .dw XT_FINDNAME
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_TICK1
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
PFA_TICK1:
    .dw XT_EXIT
