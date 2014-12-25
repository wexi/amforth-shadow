; ( -- faddr len ) 
; Environment
; Forth name
VE_ENV_FORTHNAME:
    .dw $ff0a
    .db "forth-name"
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENV_FORTHNAME
XT_ENV_FORTHNAME:
    .dw DO_COLON
PFA_EN_FORTHNAME:
    .dw XT_DOSLITERAL
    .dw 14
    .db "AmForth-Shadow"
    .dw XT_EXIT
