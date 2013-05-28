; ( -- faddr len ) 
; Environment
; flash address of the amforth name string
VE_ENV_FORTHNAME:
    .dw $ff0a
    .db "forth-name"
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_FORTHNAME
XT_ENV_FORTHNAME:
    .dw DO_COLON
PFA_EN_FORTHNAME:
    .dw XT_DOSLITERAL
    .dw 7
    .db "amforth",0
    .dw XT_EXIT
