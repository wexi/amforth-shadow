; ( e-addr - n) 
; Memory
; read 1 cell from eeprom using NVM (ATXmega)
VE_FETCHENVM:
    .dw $ff02
    .db "@e"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHENVM
XT_FETCHENVM: 
    .dw PFA_FETCHENVM
PFA_FETCHENVM:
    rcall nvm_waitforSPM
    sts NVM_ADDR0, tosl
    sts NVM_ADDR1, tosh
    sts NVM_ADDR2, zeroh
    ldi temp0,  NVM_CMD_READ_EEPROM_gc
    call_ nvm_command
    lds temp6, NVM_DATA0
    adiw tosl, 1

    rcall nvm_waitforSPM
    sts NVM_ADDR0, tosl
    sts NVM_ADDR1, tosh
    sts NVM_ADDR2, zeroh
    ldi temp0,  NVM_CMD_READ_EEPROM_gc
    call_ nvm_command
    lds temp7, NVM_DATA0
    movw tosl, temp6
    jmp_ DO_NEXT
