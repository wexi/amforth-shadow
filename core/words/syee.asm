; ( -- ) 
; System
; Memory alloc pointers sync: EE → RAM
VE_SYEE:
    .dw $ff04
    .db "syee"
    .dw VE_HEAD
    .set VE_HEAD = VE_SYEE
XT_SYEE:
    .dw DO_COLON
PFA_SYEE:
    .dw XT_DOLITERAL
    .dw EE_DP
    .dw XT_FETCHE
    .dw XT_DOLITERAL
    .dw RAM_DP
    .dw XT_STORE
	
    .dw XT_DOLITERAL
    .dw EE_HERE
    .dw XT_FETCHE
    .dw XT_DOLITERAL
    .dw RAM_HERE
    .dw XT_STORE
	
    .dw XT_DOLITERAL
    .dw EE_EDP
    .dw XT_FETCHE
    .dw XT_DOLITERAL
    .dw RAM_EDP
    .dw XT_STORE
	
    .dw XT_EXIT
