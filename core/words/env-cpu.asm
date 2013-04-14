; ( -- faddr len ) 
; Environment
; flash address of the CPU identification string
VE_ENV_CPU:
    .dw $ff03
    .db "cpu",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_CPU
XT_ENV_CPU:
    .dw DO_COLON
PFA_EN_CPU:
    .dw XT_DOLITERAL
    .dw mcu_name
    .dw XT_ICOUNT
    .dw XT_EXIT
