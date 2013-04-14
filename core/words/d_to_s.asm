; ( d1 -- n1 ) 
; Conversion
; shrink double cell value to single cell. 
VE_D2S:
    .dw $ff03
    .db "d>s",0
    .dw VE_HEAD
    .set VE_HEAD = VE_D2S
XT_D2S:
    .dw DO_COLON
PFA_D2S:
    .dw XT_DROP
    .dw XT_EXIT
