; ( addr len -- ) 
; MCU
; read len bytes from SPI to addr
VE_N_SPIR:
    .dw $ff05
    .db "n@spi",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_N_SPIR
XT_N_SPIR:
    .dw PFA_N_SPIR
PFA_N_SPIR:
    movw temp0, tosl
    loadtos
    movw zl, tosl
    movw tosl, temp0
PFA_N_SPIR_LOOP:
    out_ SPDR, zerol
PFA_N_SPIR_LOOP1:
    in_ temp2, SPSR
    sbrs temp2, SPIF
    rjmp PFA_N_SPIR_LOOP1
    in_ temp2, SPDR
    st Z+, temp2
    sbiw tosl, 1
    brne PFA_N_SPIR_LOOP
    loadtos
    jmp_ DO_NEXT

; ( addr len -- ) 
; MCU
; write len bytes to SPI from addr
VE_N_SPIW:
    .dw $ff05
    .db "n!spi",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_N_SPIW
XT_N_SPIW:
    .dw PFA_N_SPIW
PFA_N_SPIW:
    movw temp0, tosl
    loadtos
    movw zl, tosl
    movw tosl, temp0
PFA_N_SPIW_LOOP:
    ld temp2, Z+
    out_ SPDR, temp2
PFA_N_SPIW_LOOP1:
    in_ temp2, SPSR
    sbrs temp2, SPIF
    rjmp PFA_N_SPIW_LOOP1
    in_ temp2, SPDR ; ignore the data
    sbiw tosl, 1
    brne PFA_N_SPIW_LOOP
    loadtos
    jmp_ DO_NEXT
