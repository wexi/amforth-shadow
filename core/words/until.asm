; ( f -- ) (C: dest -- ) 
; Compiler
; finish begin with conditional branch, leaves the loop if true flag at runtime
VE_UNTIL:
    .dw $0005
    .db "until",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UNTIL
XT_UNTIL:
    .dw DO_COLON
PFA_UNTIL:
    .dw XT_COMPILE
    .dw XT_DOCONDBRANCH
    .dw XT_LRESOLVE
    .dw XT_EXIT
