; ( dest -- ) 
; Compiler
; resolve backward branch
;VE_LRESOLVE:
;    .dw $ff08
;    .db "<resolve"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_LRESOLVE
XT_LRESOLVE:
    .dw DO_COLON
PFA_LRESOLVE:
    .dw XT_QSTACK
    .dw XT_COMMA
    .dw XT_EXIT
