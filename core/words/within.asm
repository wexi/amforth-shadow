; ( n min max -- f) 
; Compare
; check if n is within min..max
VE_WITHIN:
    .dw $ff06
    .db "within"
    .dw VE_HEAD
    .set VE_HEAD = VE_WITHIN
XT_WITHIN:
    .dw DO_COLON
PFA_WITHIN:
    .dw XT_OVER
    .dw XT_MINUS
    .dw XT_TO_R
    .dw XT_MINUS
    .dw XT_R_FROM
    .dw XT_ULESS
    .dw XT_EXIT
; : within >r over > swap r> > or 0= ;
; alternativly
; : within over - >r - r> u< ;
