; ( d1 -- d2 ) 
; Numeric IO
; pictured numeric output: convert one digit
VE_SHARP:
    .dw $ff01
    .db "#",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP
XT_SHARP:
    .dw DO_COLON
PFA_SHARP:
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_UDSLASHMOD
    .dw XT_ROT
    .dw XT_DOLITERAL
    .dw 9
    .dw XT_OVER
    .dw XT_LESS
    .dw XT_DOCONDBRANCH
    .dw PFA_SHARP1
    .dw XT_DOLITERAL
    .dw 7
    .dw XT_PLUS
PFA_SHARP1:
    .dw XT_DOLITERAL
    .dw $30
    .dw XT_PLUS
    .dw XT_HOLD
    .dw XT_EXIT
; : #    ( ud1 -- ud2 ) 
;        base @ ud/mod rot 9 over < if 7 + then 30 + hold ; 
