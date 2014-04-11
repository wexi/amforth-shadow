; ( addr len -- f )
; Interpreter
; recognizer searching the dictionary
VE_REC_FIND:
    .dw $ff08
    .db "rec:find"
    .dw VE_HEAD
    .set VE_HEAD = VE_REC_FIND
XT_REC_FIND:
    .dw DO_COLON
PFA_REC_FIND:
    .dw XT_FINDNAME
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_FIND_NOTFOUND
	.dw XT_R_FIND
	.dw XT_EXIT
PFA_REC_FIND_NOTFOUND:
    .dw XT_R_FAIL
    .dw XT_EXIT

; ( addr len -- f )
; Interpreter
; Methode table for find recognizer
VE_R_FIND:
    .dw $ff06
    .db "r:find"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FIND
XT_R_FIND:
    .dw PFA_DOCONSTANT
PFA_R_FIND:
    .dw XT_R_FIND_INTERPRET
    .dw XT_R_FIND_COMPILE
    .dw XT_R_FIND_POSTPONE

XT_R_FIND_INTERPRET:
    .dw DO_COLON
PFA_R_FIND_INTERPRET:
    .dw XT_DROP ; the flags are in the way
    .dw XT_EXECUTE
    .dw XT_EXIT

XT_R_FIND_COMPILE:
    .dw DO_COLON
PFA_R_FIND_COMPILE:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_R_FIND_COMPILE1
	.dw XT_COMMA
        .dw XT_EXIT
PFA_R_FIND_COMPILE1:
        .dw XT_EXECUTE
    .dw XT_EXIT

XT_R_FIND_POSTPONE:
    .dw DO_COLON
PFA_R_FIND_POSTPONE:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_R_FIND_POSTPONE1
      .dw XT_COMPILE
      .dw XT_COMPILE
PFA_R_FIND_POSTPONE1:
    .dw XT_COMMA
    .dw XT_EXIT
