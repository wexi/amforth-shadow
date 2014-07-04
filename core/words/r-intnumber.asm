; ( -- addr )
; Interpreter
; Method table for single cell integers
VE_R_NUM:
    .dw $ff05
    .db "r:num",0
    .dw VE_HEAD
    .set VE_HEAD = VE_R_NUM
XT_R_NUM:
    .dw PFA_DOCONSTANT
PFA_R_NUM:
    .dw XT_NOOP    ; interpret
    .dw XT_LITERAL ; compile
    .dw XT_FAILNUM ; postpone

; ( -- addr )
; Interpreter
; Method table for double cell integers
VE_R_DNUM:
    .dw $ff06
    .db "r:dnum"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_DNUM
XT_R_DNUM:
    .dw PFA_DOCONSTANT
PFA_R_DNUM:
    .dw XT_NOOP     ; interpret
    .dw XT_2LITERAL ; compile
    .dw XT_FAILDNUM ; postpone

; ( -- addr )
; Interpreter
; Method to print a number and throw exception "invalid postpone"
VE_FAILNUM:
    .dw $ff06
    .db "fail:i"
    .dw VE_HEAD
    .set VE_HEAD = VE_FAILNUM
XT_FAILNUM:
    .dw DO_COLON
PFA_FAILNUM:
    .dw XT_DOT
    .dw XT_DOLITERAL
    .dw -48
    .dw XT_THROW
    .dw XT_EXIT

; ( -- addr )
; Interpreter
; Method to print a double cell number and throw exception "invalid postpone"
VE_FAILDNUM:
    .dw $ff06
    .db "fail:d"
    .dw VE_HEAD
    .set VE_HEAD = VE_FAILDNUM
XT_FAILDNUM:
    .dw DO_COLON
PFA_FAILDNUM:
    .dw XT_DDOT
    .dw XT_DOLITERAL
    .dw -48
    .dw XT_THROW
    .dw XT_EXIT

; ( addr len -- f )
; Interpreter
; recognizer for integer numbers
VE_REC_NUM:
    .dw $ff07
    .db "rec:num",0
    .dw VE_HEAD
    .set VE_HEAD = VE_REC_NUM
XT_REC_NUM:
    .dw DO_COLON
PFA_REC_NUM:
    ; try converting to a number
    .dw XT_NUMBER
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_NONUMBER
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_INTNUM2
      .dw XT_R_NUM
      .dw XT_EXIT
PFA_REC_INTNUM2:
      .dw XT_R_DNUM
      .dw XT_EXIT
PFA_REC_NONUMBER:
    .dw XT_R_FAIL
    .dw XT_EXIT
