; ( -- ) 
; Numeric IO
; initialize the pictured numeric output conversion process
VE_L_SHARP:
    .dw $ff02
    .db "<#"
    .dw VE_HEAD
    .set VE_HEAD = VE_L_SHARP
XT_L_SHARP:
    .dw DO_COLON
PFA_L_SHARP:
    .dw XT_PAD
    .dw XT_HLD
    .dw XT_STORE
    .dw XT_EXIT
