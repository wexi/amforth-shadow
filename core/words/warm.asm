; ( nx* -- ) (R: ny* -- )
; System
; initialize amforth further. executes turnkey operation and go to quit
VE_WARM:
    .dw $ff04
    .db "warm"
    .dw VE_HEAD
    .set VE_HEAD = VE_WARM
XT_WARM:
    .dw DO_COLON
PFA_WARM:
    .dw XT_INITUSER
    .dw XT_DOLITERAL
    .dw XT_NOOP
    .dw XT_DOLITERAL
    .dw XT_PAUSE
    .dw XT_DEFERSTORE
    .dw XT_TURNKEY
    .dw XT_QUIT
    .dw XT_EXIT
