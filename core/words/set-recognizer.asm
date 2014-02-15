; ( recn .. rec0 n -- ) 
; Interpreter
; replace the recognizer list
VE_SET_RECOGNIZER:
    .dw $ff0e
    .db "set-recognizer"
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_RECOGNIZER
XT_SET_RECOGNIZER:
    .dw DO_COLON
PFA_SET_RECOGNIZER:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLISTLEN
    .dw XT_N_STORE_E
    .dw XT_EXIT

