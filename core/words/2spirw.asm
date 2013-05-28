; ( n1 -- n2 ) 
; MCU
; SPI exchange of 2 bytes, high byte first
VE_2SPIRW:
    .dw $ff05
    .db "!@spi",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_2SPIRW
XT_2SPIRW:
    .dw PFA_2SPIRW
PFA_2SPIRW:
    push tosl
    mov tosl, tosh
    call_ do_spirw
    mov tosh, tosl
    pop tosl
    call_ do_spirw
    jmp_ DO_NEXT

