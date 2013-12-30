; ( c -- ) 
; Character IO
; fetch the emit vector and execute it. should emit a character from TOS
VE_EMIT:
    .dw $ff04
    .db "emit"
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw PFA_DODEFER1
PFA_EMIT:
    .dw USER_EMIT
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
