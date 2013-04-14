; ( -- dest ) 
; Compiler
; place destination for backward branch
;VE_LMARK:
;    .dw $ff05
;    .db "<mark"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_LMARK
XT_LMARK:
    .dw DO_COLON
PFA_LMARK:
    .dw XT_DP
    .dw XT_EXIT
