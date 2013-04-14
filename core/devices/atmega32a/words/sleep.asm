; ( mode -- )
; MCU
; put the controller into the specified sleep mode
VE_SLEEP:
  .dw $ff05
  .db "sleep", 0
  .dw VE_HEAD
  .set VE_HEAD = VE_SLEEP
XT_SLEEP:
  .dw PFA_SLEEP
PFA_SLEEP:
  andi  tosl, 7             ; leave only legal mode bits
  swap  tosl                ; move to correct location (bits 6-4, atmega32)
  ori   tosl, $80           ; set the SE bit (atmega32: bit 7, not bit 0)
  out_  MCUCR, tosl         ; set the sleep config (atmega32: MCUCR not SMCR)
  sleep                   ; nighty-night
;; the 4 lower bits of MCUCR should not be touched
  in_   tosl, MCUCR
  andi  tosl, $0F
  out_  MCUCR, tosl
  ;clr  tosl                ; need to clean up the SMCR reg before we leave
  ;out    SMCR, tosl          ; 0 protects against accidental sleeps
  loadtos                   ; pop argument from stack
  jmp  DO_NEXT
