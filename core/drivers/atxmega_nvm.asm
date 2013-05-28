
nvm_waitforSPM:
    lds  temp0, NVM_STATUS     ; Load the NVM Status register.
    sbrc temp0, NVM_NVMBUSY_bp ; Check if bit is cleared.
    rjmp nvm_waitforSPM       ; Repeat check if bit is not cleared.
    clr  temp0
    sts  NVM_CMD, temp0        ; Clear up command register to NO_OPERATION.
    ret

nvm_commonSPM:
    sts  NVM_CMD, temp0     ; Load prepared command into NVM Command register.
    ldi  temp1, CCP_SPM_gc  ; Prepare Protect SPM signature in R16.
    sts  CPU_CCP, temp1         ; Enable SPM operation (this disables interrupts for 4 cycles).
    spm                   ; Self-program.
    ret

nvm_commonLPM:
    sts  NVM_CMD, temp0
    lpm  temp0, Z
    ret

nvm_command:
    sts  NVM_CMD, temp0        ; Load command into NVM Command register.
    ldi  temp1, CCP_IOREG_gc   ; Prepare Protect IO-register signature in R16.
    ldi  temp2, NVM_CMDEX_bm   ; Prepare bitmask for setting NVM Command Execute bit into R17.
    sts  CPU_CCP, temp1        ; Enable IO-register operation (this disables interrupts for 4 cycles).
    sts  NVM_CTRLA, temp2      ; Load bitmask into NVM Control Register A, which executes the command.
    lds  temp0, NVM_DATA0      ; Load NVM Data Register 0 into R16.
    lds  temp1, NVM_DATA1      ; Load NVM Data Register 1 into R17.
    lds  temp2, NVM_DATA2      ; Load NVM Data Register 2 into R18.
    ret


.equ XT_STOREE = XT_STOREENVM
.equ XT_FETCHE = XT_FETCHENVM
