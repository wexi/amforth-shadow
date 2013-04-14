; ( --  ) (C: orig dest -- )
; Compiler
; continue execution at dest, resolve orig
VE_REPEAT:
    .dw $0006
    .db "repeat"
    .dw VE_HEAD
    .set VE_HEAD = VE_REPEAT
XT_REPEAT:
    .dw DO_COLON
PFA_REPEAT:
    .dw XT_AGAIN
    .dw XT_GRESOLVE
    .dw XT_EXIT
