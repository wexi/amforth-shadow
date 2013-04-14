; ( n -- ) 
; Exceptions
; throw an exception
VE_THROW:
    .dw $ff05
    .db "throw",0
    .dw VE_HEAD
    .set VE_HEAD = VE_THROW
XT_THROW:
    .dw DO_COLON
PFA_THROW:
    .dw XT_DUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_THROW1
	.dw XT_DROP
	.dw XT_EXIT
PFA_THROW1:
    .dw XT_HANDLER
    .dw XT_FETCH
    .dw XT_RP_STORE
    .dw XT_R_FROM
    .dw XT_HANDLER
    .dw XT_STORE
    .dw XT_R_FROM
    .dw XT_SWAP
    .dw XT_TO_R
    .dw XT_SP_STORE
    .dw XT_DROP
    .dw XT_R_FROM    
    .dw XT_EXIT

