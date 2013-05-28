; ( -- dest ) 
; Compiler
; places current dictionary position for backward resolves
;VE_GMARK:
;    .dw $ff05
;    .db ">mark"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_GMARK
XT_GMARK:
    .dw DO_COLON
PFA_GMARK:
    .dw XT_DP
    .dw XT_COMPILE
    .dw -1           ; ffff does not erase flash
    .dw XT_EXIT
    