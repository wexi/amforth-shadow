; ( -- f ) 
; System
; refills the input buffer
VE_REFILL:
    .dw $ff06
    .db "refill"
    .dw VE_HEAD
    .set VE_HEAD = VE_REFILL
XT_REFILL:
    .dw PFA_DODEFER
PFA_REFILL:
    .dw USER_REFILL
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE

