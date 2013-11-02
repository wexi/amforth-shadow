; ( -- v) 
; System Value
; address of the default user area content in eeprom
VE_EEUSER:
  .dw $ff07
  .db "ee-user",0
  .dw VE_HEAD
  .set VE_HEAD = VE_EEUSER
XT_EEUSER:
  .dw PFA_DOVARIABLE
PFA_EEUSER:          ; ( -- )
  .dw EE_INITUSER

; ( e-addr r-addr len -- ) 
; Tools
; copy len cells from eeprom to ram
VE_EE2RAM:
  .dw $ff06
  .db "ee>ram"
  .dw VE_HEAD
  .set VE_HEAD = VE_EE2RAM
XT_EE2RAM:
  .dw DO_COLON
PFA_EE2RAM:          ; ( -- )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_EE2RAM_2
PFA_EE2RAM_1:
    ; ( -- e-addr r-addr )
    .dw XT_OVER
    .dw XT_FETCHE
    .dw XT_OVER
    .dw XT_STORE
    .dw XT_CELLPLUS
    .dw XT_SWAP
    .dw XT_CELLPLUS
    .dw XT_SWAP
    .dw XT_DOLOOP
    .dw PFA_EE2RAM_1
PFA_EE2RAM_2:
    .dw XT_2DROP
    .dw XT_EXIT

; ( -- )
; Tools
; setup the default user area from eeprom
VE_INITUSER:
  .dw $ff09
  .db "init-user",0
  .dw VE_HEAD
  .set VE_HEAD = VE_INITUSER
XT_INITUSER:
  .dw DO_COLON
PFA_INITUSER:          ; ( -- )
    .dw XT_EEUSER
    .dw XT_UP_FETCH
    .dw XT_DOLITERAL
    .dw SYSUSERSIZE
    .dw XT_2SLASH
    .dw XT_EE2RAM
    .dw XT_EXIT
