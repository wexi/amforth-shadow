    .dw -1           ; EEPROM Address 0 should not be used
EE_DP:
    .dw DPSTART      ; Dictionary Pointer
EE_HERE:
    .dw HERESTART    ; Memory Allocation
EE_EHERE:
    .dw EHERESTART     ; EEProm Memory Allocation
EE_TURNKEY:
    .dw XT_APPLTURNKEY  ; TURNKEY
EE_STOREI:
    .dw XT_DO_STOREI  ; Store a cell into flash

EE_ENVIRONMENT:
    .dw VE_ENVHEAD   ; environmental queries
EE_WL_FORTH:
    .dw EE_FORTHWORDLIST; forth-wordlist
EE_CURRENT:
    .dw EE_FORTHWORDLIST
EE_FORTHWORDLIST:
    .dw VE_HEAD      ; pre-defined (compiled in) wordlist
EE_ORDERLISTLEN:
    .dw 2
EE_ORDERLIST: ; list of wordlist id, exactly numwordlist entries
    .dw EE_FORTHWORDLIST      ; get/set-order
    .dw EE_FORTHWORDLIST      ; get/set-order
    .byte  (NUMWORDLISTS-1)*CELLSIZE ; two slots are already used
EE_RECOGNIZERS:
EE_RECOGNIZERLISTLEN:
    .dw 2
EE_RECOGNIZERLIST:
    .dw XT_REC_FIND
    .dw XT_REC_INTNUM
    .dw -1
    .dw -1
    .dw -1
    .dw -1

EE_WLSCOPE:
    .dw XT_GET_CURRENT  ; default wordlist scope

; MARKER saves everything up to here. Nothing beyond gets saved
EE_MARKER:
    .dw EE_MARKER

; default user area
EE_INITUSER:
    .dw 0  ; USER_STATE
    .dw 0  ; USER_FOLLOWER
    .dw rstackstart  ; USER_RP
    .dw stackstart   ; USER_SP0
    .dw stackstart   ; USER_SP
    
    .dw 0  ; USER_HANDLER
    .dw 10 ; USER_BASE
    
    .dw XT_TX  ; USER_EMIT
    .dw XT_TXQ ; USER_EMITQ
    .dw XT_RX  ; USER_KEY
    .dw XT_RXQ ; USER_KEYQ
    .dw XT_SOURCETIB ; USER_SKEY
    .dw 0            ; USER_G_IN
    .dw XT_REFILLTIB ; USER_REFILL  

; calculate baud rate error
.equ UBRR_VAL   = ((F_CPU+BAUD*8)/(BAUD*16)-1)  ; smart round
.equ BAUD_REAL  = (F_CPU/(16*(UBRR_VAL+1)))     ; effective baud rate
.equ BAUD_ERROR = ((BAUD_REAL*1000)/BAUD-1000)  ; error in pro mille

.if ((BAUD_ERROR>BAUD_MAXERROR) || (BAUD_ERROR<-BAUD_MAXERROR))       
  .error "Serial line cannot be set up properly (systematic baud error too high)"
.endif
EE_UBRRVAL:
    .dw UBRR_VAL     ; BAUDRATE
EE_FCPU:
    .dd F_CPU        ; CPU Clock
