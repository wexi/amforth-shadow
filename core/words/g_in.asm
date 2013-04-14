; ( -- a-addr ) 
; System Variable
; pointer to current read position in input buffer
VE_G_IN:
    .dw $ff03
    .db ">in",0
    .dw VE_HEAD
    .set VE_HEAD = VE_G_IN
XT_G_IN:
    .dw PFA_DOUSER
PFA_G_IN:
    .dw USER_G_IN
