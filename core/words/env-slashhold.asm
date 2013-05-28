; ( -- hldsize ) 
; Environment
; size of the pictured numeric output buffer in bytes
VE_ENVSLASHHOLD:
    .dw $ff05
    .db "/hold",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENVSLASHHOLD
XT_ENVSLASHHOLD:
    .dw DO_COLON
PFA_ENVSLASHHOLD:
    .dw XT_PAD
    .dw XT_HERE
    .dw XT_MINUS
    .dw XT_EXIT
