; ( -- usersize ) 
; Environment
; size of the USER area in bytes
VE_ENVUSERSIZE:
    .dw $ff05
    .db "/user",0
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENVUSERSIZE
XT_ENVUSERSIZE:
    .dw DO_COLON
PFA_ENVUSERSIZE:
    .dw XT_DOLITERAL
    .dw SYSUSERSIZE + APPUSERSIZE
    .dw XT_EXIT
