; ( -- n )
; Environment
; version number of amforth
VE_ENV_FORTHVERSION:
    .dw $ff07
    .db "version",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_FORTHVERSION
XT_ENV_FORTHVERSION:
    .dw DO_COLON
PFA_EN_FORTHVERSION:
    .dw XT_DOLITERAL
    .dw 54
    .dw XT_EXIT
