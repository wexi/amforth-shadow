; ( addr len --  0 | xt -1 | xt 1 ) 
; Tools
; search wordlists for the name from string addr/len
VE_FINDNAME:
    .dw $ff09
    .db "find-name",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FINDNAME
XT_FINDNAME:
    .dw DO_COLON
PFA_FINDNAME:
    .dw XT_DOLITERAL
    .dw EE_ORDERLISTLEN
    .dw XT_FETCHE
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_FINDNAME2
PFA_FINDNAME1:
    ; ( addr len --)
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_I
    .dw XT_CELLS
    .dw XT_PLUS  
    .dw XT_FETCHE ; ( -- addr len addr len wid )
PFA_FINDNAME3:
    .dw XT_SEARCH_WORDLIST ; ( -- addr len [xt] flag
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_FINDNAME4
	.dw XT_TO_R
	.dw XT_TO_R
	.dw XT_DROP
	.dw XT_DROP
	.dw XT_R_FROM
	.dw XT_R_FROM
	.dw XT_UNLOOP
	.dw XT_EXIT
PFA_FINDNAME4:
    .dw XT_DOLOOP
    .dw PFA_FINDNAME1
PFA_FINDNAME2:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_ZERO
    .dw XT_EXIT
