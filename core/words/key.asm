; ( -- c ) 
; Character IO
; fetch key vector and execute it, should leave a single character on TOS
VE_KEY:
    .dw $ff03
    .db "key",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw PFA_DODEFER
PFA_KEY:
    .dw USER_KEY
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
