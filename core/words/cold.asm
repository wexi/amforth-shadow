; ( -- ) 
; System
; start up amforth.
VE_COLD:
    .dw $ff04
    .db "cold"
    .dw VE_HEAD
    .set VE_HEAD = VE_COLD
XT_COLD:
    .dw PFA_COLD
	
COLD_START:
    clr zerol
    clr zeroh
    rjmp clr_ints

PFA_COLD:
    cli
    out_ MCUSR, zerol		; programmatic restart

clr_ints:			; clear soft interrupts stuff
    ldi zl, low(intovf)
    ldi zh, high(intovf)
clr_int:
    st  z+, zerol
    cpi zl, low(intvec)
    brne clr_int
	
; reduce wear of EE based memory alloc pointers using RAM copies
; use "eesy" to sync back EEPROM with RAM
.dseg
RAM_DP:    .byte 2		; must match 
RAM_HERE:  .byte 2		;  amforth-eeprom.inc
RAM_EHERE: .byte 2		;  EE order
RAM_XXX:
.cseg
    ldiw X, EE_DP
    ldiw Z, RAM_DP
    ldi temp0, low(RAM_XXX)
RAMSYNC:
    out_ EEARH, xh
    out_ EEARL, xl
    adiw xh:xl, 1
    sbi_ EECR, EERE
    in_ temp1, EEDR
    st Z+, temp1
    cpse zl, temp0
    rjmp RAMSYNC
	
; init first user data area
; allocate space for User Area
.dseg
ram_user1: .byte SYSUSERSIZE + APPUSERSIZE
.cseg
    ldi zl, low(ram_user1)
    ldi zh, high(ram_user1)
    movw upl, zl
    ; init return stack pointer
    ldi temp0,low(rstackstart)
    out_ SPL,temp0
    std Z+4, temp0
    ldi temp1,high(rstackstart)
    out_ SPH,temp1
    std Z+5, temp1

    ; init parameter stack pointer
    ldi yl,low(stackstart)
    std Z+6, yl
    ldi yh,high(stackstart)
    std Z+7, yh

    ; load Forth IP with starting word
    ldi XL, low(PFA_WARM)
    ldi XH, high(PFA_WARM)
    ; its a far jump...
    jmp_ DO_NEXT
