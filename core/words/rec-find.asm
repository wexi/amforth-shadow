; ( addr len -- f ) 
; Interpreter
; recognizer searching the dictionary
VE_REC_FIND:
    .dw $ff08
    .db "rec-find"
    .dw VE_HEAD
    .set VE_HEAD = VE_REC_FIND
XT_REC_FIND:
    .dw DO_COLON
PFA_REC_FIND:
    .dw XT_FINDNAME
    .dw XT_DUP
    .dw XT_DOCONDBRANCH 
    .dw PFA_REC_FIND_NOTFOUND
	; either compile or execute the XT
	.dw XT_GREATERZERO
	.dw XT_DOCONDBRANCH
	.dw PFA_REC_FIND_CHECKSTATE
	    ; flag is 1: always execute
	    .dw XT_DOBRANCH
	    .dw PFA_REC_FIND_EXECUTE
PFA_REC_FIND_CHECKSTATE:
        ; check state 
	    .dw XT_STATE
	    .dw XT_FETCH
	    .dw XT_DOCONDBRANCH
	    .dw PFA_REC_FIND_EXECUTE
	    .dw XT_COMMA
	    .dw XT_DOBRANCH
	    .dw PFA_REC_FIND_OK
PFA_REC_FIND_EXECUTE:
    ; state is zero, execute xt
    .dw XT_EXECUTE
PFA_REC_FIND_OK:
    .dw XT_TRUE
PFA_REC_FIND_NOTFOUND:
    .dw XT_EXIT

