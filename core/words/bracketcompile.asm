; ( -- c ) (C: "<space>name" -- )
; Tools
; skip leading space delimites, place the first COMPILEacter of the word on the stack
VE_BRACKETCOMPILE:
    .dw $0009
    .db "[compile]",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BRACKETCOMPILE
XT_BRACKETCOMPILE:
    .dw DO_COLON
PFA_BRACKETCOMPILE:
    .dw XT_COMPILE
    .dw XT_COMPILE
    .dw XT_TICK
    .dw XT_COMMA
    .dw XT_EXIT
