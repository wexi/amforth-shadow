; ( n f-addr -- ) 
; Memory
; writes n to flash at f-addr using NVM (ATXmega)
VE_DO_STOREI_NVM:
    .dw $ff08
    .db "(!i-nvm)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI_NVM
XT_DO_STOREI:
    .dw DO_COLON
PFA_DO_STOREI_NVM:
    .dw XT_DOLITERAL
    .dw -20
    .dw XT_THROW

