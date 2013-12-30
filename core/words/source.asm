; ( -- addr n ) 
; System
; address and current length of the input buffer
VE_SOURCE:
    .dw $FF06
    .db "source"
    .dw VE_HEAD
    .set VE_HEAD = VE_SOURCE
XT_SOURCE:
    .dw PFA_DODEFER1
PFA_SOURCE:
    .dw USER_SOURCE
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE


