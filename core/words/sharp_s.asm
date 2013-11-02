; ( d -- 0 ) 
; Numeric IO
; pictured numeric output: convert all digits until 0 (zero) is reached
VE_SHARP_S:
    .dw $ff02
    .db "#s"
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP_S
XT_SHARP_S:
    .dw DO_COLON
PFA_SHARP_S:
    .dw XT_SHARP
    .dw XT_2DUP
    .dw XT_OR
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SHARP_S
    .dw XT_EXIT
