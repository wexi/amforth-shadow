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
