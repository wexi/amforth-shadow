; ( -- f) 
; Character IO
; fetch key? vector and execute it. should turn on key sender, if it is disabled/stopped
VE_KEYQ:
    .dw $ff04
    .db "key?"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw PFA_DODEFER
PFA_KEYQ:
    .dw USER_KEYQ
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
