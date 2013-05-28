; ( -- ) (C: -- dest ) 
; Compiler
; put the next location for a transfer of control onto the control flow stack
VE_BEGIN:
    .dw $0005
    .db "begin",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BEGIN
XT_BEGIN:
    .dw DO_COLON
PFA_BEGIN:
    .dw XT_LMARK
    .dw XT_EXIT
