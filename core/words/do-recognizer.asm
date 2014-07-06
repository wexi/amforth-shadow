; (addr len -- i*x r:table | r:fail)
; System
; walt the recognizer stack
VE_DORECOGNIZER:
    .dw $ff0d
    .db "do-recognizer",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DORECOGNIZER
XT_DORECOGNIZER:
    .dw DO_COLON
PFA_DORECOGNIZER:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLISTLEN
    .dw XT_FETCHE       ; ( addr len rec # -- )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_INTERPRET2
PFA_DORECOGNIZER1:
    ; ( -- addr len )
    ; I comes from the return stack.
    .dw XT_2DUP ; ( -- addr len addr len  )
    .dw XT_I    ; ( -- addr len addr len i )
    .dw XT_ROT  ; ( -- addr len len i addr )
    .dw XT_ROT  ; ( -- addr len i addr len )
    .dw XT_2TO_R
    .dw XT_CELLS
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLIST
    .dw XT_PLUS
    .dw XT_FETCHE
    .dw XT_EXECUTE
    .dw XT_DUP
    .dw XT_R_FAIL
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_DORECOGNIZER3
      .dw XT_2R_FROM
      .dw XT_2DROP
      .dw XT_UNLOOP
      .dw XT_EXIT
PFA_DORECOGNIZER3:
    .dw XT_DROP
    .dw XT_2R_FROM
    .dw XT_DOLOOP
    .dw PFA_DORECOGNIZER1
PFA_DORECOGNIZER2:
    .dw XT_R_FAIL
    .dw XT_EXIT
