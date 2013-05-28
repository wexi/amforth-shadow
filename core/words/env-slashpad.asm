; ( -- padsize ) 
; Environment
; Size of the PAD buffer in bytes
VE_ENVSLASHPAD:
    .dw $ff04
    .db "/pad"
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENVSLASHPAD
XT_ENVSLASHPAD:
    .dw DO_COLON
PFA_ENVSLASHPAD:
    .dw XT_SP_FETCH
    .dw XT_PAD
    .dw XT_MINUS
    .dw XT_EXIT
