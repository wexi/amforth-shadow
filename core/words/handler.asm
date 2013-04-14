; ( -- a-addr ) 
; Exceptions
; USER variable used by catch/throw
VE_HANDLER:
    .dw $ff07
    .db "handler",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HANDLER
XT_HANDLER:
    .dw PFA_DOUSER
PFA_HANDLER:
    .dw USER_HANDLER
