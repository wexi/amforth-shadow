; ( x1 x2 --  ) 
; Stack
; Remove the 2 top elements
VE_2DROP:
    .dw $ff05
    .db "2drop"
    .dw VE_HEAD
    .set VE_HEAD = VE_2DROP
XT_2DROP:
    .dw DO_COLON
PFA_2DROP:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
