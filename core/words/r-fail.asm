; ( -- addr )
; Interpreter
; there is no parser for this recognizer, this is the default and failsafe part
VE_R_FAIL:
    .dw $ff06
    .db "r:fail"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FAIL
XT_R_FAIL:
    .dw PFA_DOCONSTANT
PFA_R_FAIL:
    .dw XT_FAILS  ; interpret
    .dw XT_FAILS  ; compile
    .dw XT_FAILS  ; postpone

; fail action for a string
VE_FAILS:
    .dw $ff06
    .db "fail:s"
    .dw VE_HEAD
    .set VE_HEAD = VE_FAILS
XT_FAILS:
    .dw DO_COLON
PFA_FAILS:
    .dw XT_TYPE
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
    .dw XT_EXIT
