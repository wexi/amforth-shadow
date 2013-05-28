; ( ud w -- ) 
; Numeric IO
; unsigned PNO with double cell numbers, right aligned in width w
VE_UDDOTR:
    .dw $ff04
    .db "ud.r"
    .dw VE_HEAD
    .set VE_HEAD = VE_UDDOTR
XT_UDDOTR:
    .dw DO_COLON
PFA_UDDOTR:
    .dw XT_TO_R
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_SHARP_G
    .dw XT_R_FROM
    .dw XT_OVER
    .dw XT_MINUS
    .dw XT_SPACES
    .dw XT_TYPE
    .dw XT_EXIT
; : ud.r      ( ud n -- )  >r <# #s #> r> over - spaces type ;