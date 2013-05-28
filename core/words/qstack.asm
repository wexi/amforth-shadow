; ( --  ) 
; Tools
; check stack underflow, throw exception -4
VE_QSTACK:
    .dw $ff06
    .db "?stack"
    .dw VE_HEAD
    .set VE_HEAD = VE_QSTACK
XT_QSTACK:
    .dw DO_COLON
PFA_QSTACK:
; : ?stack ( -- )
;    depth 0< if -&4 throw then
; ;
    .dw XT_DEPTH
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_QSTACK1
      .dw XT_DOLITERAL
      .dw -4
      .dw XT_THROW
PFA_QSTACK1:
    .dw XT_EXIT
