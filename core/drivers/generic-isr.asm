; ISR routines
.dseg
intovf:	.byte 1			; int'→ lo: hard interrupts overflow (nz = prog addr)
intswi:	.byte 1			; int'→ hi: soft interrupts inhibit  (nz = inhibited)
intbuf:	.byte 9			; last byte (+8) always zero
intvec:	.byte INTVECTORS * CELLSIZE

; clear hard interrupts overflow mark: 0 int' c!
; enable/disable soft interrupts by:   int+ int-
	
.cseg
; interrupt routine gets called (again) by rcall! This gives the
; address of the int-vector on the stack.
isr:
    st -Y, temp0
    in temp0, SREG
    st -Y, temp0
    st -Y, temp1
.if (pclen==3)
    pop temp0			; some 128+K Flash devices use 3 cells for call/ret
.endif
    pop temp0
    pop temp0			; = intnum * intvectorsize + 1 (address following the rcall)
    dec temp0
.if intvecsize == 1 ;
    lsl temp0
.endif
    push xh
    push xl
    ldi  xl, low(intbuf)
    ldi  xh, high(intbuf)
	
; crude yet efficient queue (input) if having low occupancy
	
.macro inp_buf
    ld   temp1, X+
    tst  temp1
    breq inp_cur		; free Q place?
.endmacro

    inp_buf
    inp_buf
    inp_buf
    inp_buf
    inp_buf
    inp_buf
    inp_buf
    inp_buf
	
    sts intovf, temp0		; mark overflow with prog addr
    pop xl			; ignore interrupt
    pop xh
    ld temp1, Y+
    ld temp0, Y+
    rjmp int_swi
	
inp_cur:
    st -X, temp0		; save interrupt address in queue
    pop xl
    pop xh
    ld temp1, Y+
    lds temp0, intswi
    tst temp0
    ld temp0, Y+		; temp0 = saved SREG
    brne int_swi		; soft interrupts inhibited?
    ori temp0, $40		; set T bit pos to interrupt forth
	
int_swi:
    out SREG, temp0
    ld temp0, Y+
    reti
