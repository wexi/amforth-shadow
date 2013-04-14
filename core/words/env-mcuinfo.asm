; ( -- faddr len ) 
; Environment
; flash address of some CPU specific parameters
VE_ENV_MCUINFO:
    .dw $ff08
    .db "mcu-info"
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_MCUINFO
XT_ENV_MCUINFO:
    .dw DO_COLON
PFA_EN_MCUINFO:
    .dw XT_DOLITERAL
    .dw mcu_info
    .dw XT_EXIT
