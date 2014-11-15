; ISR routines

#ifdef	INTQUE
.equ intsiz = INTQUE
#else
.equ intsiz = 8			;queue size
#endif

.dseg
svTEMP:	.byte 1			;saves TEMP0
svSREG:	.byte 1			;saves SREG
intovf:	.byte 1			;int'→ lo: hard interrupts overflow (nz = prog addr)
intswi:	.byte 1			;int'→ hi: soft interrupts inhibit  (nz = inhibited)
intbuf:	.byte intsiz+1		;last byte always zero
intvec:	.byte INTVECTORS * CELLSIZE

; clear hard interrupts overflow mark: 0 int' c!
; enable/disable soft interrupts by:   int+ int-
	
.cseg
#ifdef	_CAN32DEF_INC_
#define	_CANDEF_
#endif
#ifdef	_CAN64DEF_INC_
#define	_CANDEF_
#endif
#ifdef	_CAN128DEF_INC_
#define	_CANDEF_
#endif

#ifdef	_CANDEF_
.set	pc_ = pc
.org	CANITaddr
	rjmp	can_isr
.org	pc_
can_isr:			;since CAN interrupts are not ack'ed by handler exec
	sts	svTEMP, TEMP0
	in	TEMP0, SREG
	sts	svSREG, TEMP0
	lds	TEMP0, CANGIE	;disable all CAN interrupts
	andi	TEMP0, $7F
	sts	CANGIE, TEMP0
	ldi	TEMP0, CANITaddr ;interrupt ID
	rjmp	isr_join  
#endif	

; interrupt routine gets called (again) by rcall! This gives the
; address of the int-vector on the stack.
isr:
	sts	svTEMP, TEMP0
	in	TEMP0, SREG
	sts	svSREG, TEMP0

.if 	pclen == 3
	pop	TEMP0		;some 128+K Flash devices use 3 cells for call/ret
.endif
	pop	TEMP0
	pop	TEMP0		;= intnum * intvectorsize + 1 (address following the rcall)
	dec	TEMP0
.if 	intvecsize == 1
	lsl	TEMP0
.endif
	
isr_join:			;TEMP0 = interrupt address
	push	TEMP1
	push	ZL
	push	ZH
	ldiw	Z, intbuf
	
; crude yet efficient queue (input) if having low occupancy
	
.macro	inp_buf
.if	@0
	ld	TEMP1, Z+
	tst	TEMP1
	breq	inp_cur		;free Q place?
	inp_buf	(@0-1)
.endif
.endmacro

	inp_buf intsiz
	
	sts	intovf, TEMP0	;mark overflow with prog addr
	lds	TEMP0, svSREG
	rjmp	int_swi
	
inp_cur:
	st	-Z, TEMP0	;save interrupt address in queue

	lds	TEMP0, intswi
	tst	TEMP0
	lds	TEMP0, svSREG	;TEMP0 = saved SREG
	brne	int_swi		;soft interrupts inhibited?
	ori	TEMP0, $40	;set T bit pos to interrupt forth
	
int_swi:
	pop	ZH
	pop	ZL
	pop	TEMP1
	out	SREG, TEMP0
	lds	TEMP0, svTEMP
	reti
