; ( -- ) 
; System
; main loop of amforth. accept - interpret in an endless loop
VE_QUIT:
    .dw $ff04
    .db "quit"
    .dw VE_HEAD
    .set VE_HEAD = VE_QUIT
XT_QUIT:
    .dw DO_COLON
PFA_QUIT:
    .dw XT_SP0
    .dw XT_SP_STORE
    .dw XT_RP0
    .dw XT_RP_STORE
    .dw XT_LBRACKET

PFA_QUIT2:
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT4
    .dw XT_PROMPTRDY
PFA_QUIT4:
    .dw XT_REFILL
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT2
    .dw XT_DOLITERAL
    .dw XT_INTERPRET
    .dw XT_CATCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT3
	.dw XT_DUP
	.dw XT_DOLITERAL
	.dw -2
	.dw XT_LESS
	.dw XT_DOCONDBRANCH
	.dw PFA_QUIT5
	.dw XT_PROMPTERROR
PFA_QUIT5:
	.dw XT_DOBRANCH
	.dw PFA_QUIT
PFA_QUIT3:
    .dw XT_PROMPTOK
    .dw XT_DOBRANCH
    .dw PFA_QUIT2
    .dw XT_EXIT ; never reached

