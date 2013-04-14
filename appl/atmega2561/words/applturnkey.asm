; ( -- ) System
; R( -- )
; application specific turnkey action
VE_APPLTURNKEY:
    .dw $ff0b
    .db "applturnkey",0
    .dw VE_HEAD
    .set VE_HEAD = VE_APPLTURNKEY
XT_APPLTURNKEY:
    .dw DO_COLON
PFA_APPLTURNKEY:
    .dw XT_USART

    .dw XT_INTON
    .dw XT_VER
    .dw XT_SPACE
    .dw XT_F_CPU
    .dw XT_DOLITERAL
    .dw 1000
    .dw XT_UMSLASHMOD
    .dw XT_SWAP
    .dw XT_DROP
    .dw XT_DECIMAL
    .dw XT_DOT
    .dw XT_DOSLITERAL
    .dw 4
    .db "kHz "
    .dw XT_ITYPE
    
    .dw XT_EXIT
