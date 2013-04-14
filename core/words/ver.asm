; ( -- ) 
; Tools
; print the version string
VE_VER:
    .dw $ff03
    .db "ver",0
    .dw VE_HEAD
    .set VE_HEAD = VE_VER
XT_VER:
    .dw DO_COLON
PFA_VER:
    .dw XT_ENV_FORTHNAME
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_TO_R
    .dw XT_DECIMAL

    .dw XT_ENV_FORTHVERSION
    .dw XT_S2D
    .dw XT_L_SHARP
    .dw XT_SHARP
    .dw XT_DOLITERAL
    .dw '.'
    .dw XT_HOLD
    .dw XT_SHARP_S
    .dw XT_SHARP_G
    .dw XT_R_FROM
    .dw XT_BASE
    .dw XT_STORE

    .dw XT_TYPE
    .dw XT_SPACE
    .dw XT_ENV_CPU
    .dw XT_ITYPE
    .dw XT_EXIT
