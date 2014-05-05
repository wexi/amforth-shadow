; ( u n -- ) 
; Numeric IO
; Print n digits, fill in preceeding zeros if needed
VE_UZERODOTR:
    .dw $ff04
    .db "u0.r"
    .dw VE_HEAD
    .set VE_HEAD = VE_UZERODOTR
XT_UZERODOTR:
    .dw DO_COLON
PFA_UZERODOTR:
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_L_SHARP
    .dw XT_R_FROM
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_UZERODOTR2
PFA_UZERODOTR1:
    .dw XT_SHARP
    .dw XT_DOLOOP
    .dw PFA_UZERODOTR1
PFA_UZERODOTR2:
    .dw XT_SHARP_G
    .dw XT_TYPE
    .dw XT_EXIT
; : u0.r      ( u n -- )   >r 0 <# r> 0 ?do # loop #> type ;
