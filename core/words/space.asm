; ( -- ) 
; Character IO
; emits a space (bl)
VE_SPACE:
    .dw $ff05
    .db "space",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SPACE
XT_SPACE:
    .dw DO_COLON
PFA_SPACE:
    .dw XT_BL
    .dw XT_EMIT
    .dw XT_EXIT
