; ( i*x -- ) (R: j*y -- )
; Exceptions
; send an exception -1
VE_ABORT:
    .dw $ff05
    .db "abort",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ABORT
XT_ABORT:
    .dw DO_COLON
PFA_ABORT:
    .dw XT_TRUE ; -1
    .dw XT_THROW
