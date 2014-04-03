
; there is no parser for this recognizer
; this is the default and failsave part
VE_R_FAIL:
    .dw $ff06
    .db "r:fail"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FAIL
XT_R_FAIL:
    .dw PFA_DOCONSTANT
PFA_R_FAIL:
    .dw XT_FAIL  ; interpret
    .dw XT_FAIL  ; compile
    .dw XT_FAIL  ; postpone

VE_FAIL:
    .dw $ff04
    .db "fail"
    .dw VE_HEAD
    .set VE_HEAD = VE_FAIL
XT_FAIL:
    .dw DO_COLON
PFA_FAIL:
    .dw XT_TYPE
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
    .dw XT_EXIT
