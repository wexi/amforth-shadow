; ISR routines

#ifdef	INTQUE
.equ intsiz = INTQUE
#else
.equ intsiz = 8			;interrupts queue length
#endif

; Note:
	
; Clear hard interrupts overflow by: 0 int' c!
; Enclose critical sections by: int- ... int+
; Serve soft interrupts from critical section: INT*
	
; SPI / CAN interrupts auto disable

.dseg
intovf:	.byte 1			;int'→ lo: hard interrupts overflow (nz = prog addr)
intswi:	.byte 1			;int'→ hi: soft interrupts inhibit  (nz = inhibited)
oSPDR:	.byte 1			;SPDR output buffer
iSPDR:	.byte 1			;SPDR input buffer
intbuf:	.byte intsiz+1		;last byte always zero
intvec:	.byte INTVECTORS * CELLSIZE

.cseg
VE_oSPDR:
	.dw	$ff05
	.db	"oSPDR",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_oSPDR
XT_oSPDR:
	.dw	PFA_DOVARIABLE
PFA_oSPDR:
	.dw	oSPDR

VE_iSPDR:
	.dw	$ff05
	.db	"iSPDR",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_iSPDR
XT_iSPDR:
	.dw	PFA_DOVARIABLE
PFA_iSPDR:
	.dw	iSPDR

.set	pc_ = pc
.org	SPIaddr
	rcall	isrspi
.org	pc_

isrspi:	st	-Y, temp0	;SPIF cleared by interrupt
	in_	temp0, SREG
	st	-Y, temp1
	in_	temp1, SPDR	;buffer i/o
	sts	iSPDR, temp1
	lds	temp1, oSPDR
	out_	SPDR, temp1
	cbi_	SPCR, SPIE, temp1 ;disable SPI interrupts
	rjmp	isrcom
	
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
	rcall	isrcan
.org	pc_
	
isrcan:	st	-Y, temp0	;CANIT not cleared by interrupt
	in_	temp0, SREG
	st	-Y, temp1
	cbi_	CANGIE, ENIT, temp1 ;disable CAN interrupts
	rjmp	isrcom  
#endif	
	
isr:	st	-Y, temp0
	in_	temp0, SREG
	st	-Y, temp1
	
isrcom:	pop	temp1		;rcall passes faddr+1
	pop	temp1		;big endian stored
	dec	temp1		;interrupt vector address
	
	st	-Y, temp2
	st	-Y, zl
	st	-Y, zh
	ldiw	Z, intbuf
	
; crude yet efficient queue (input) if having low occupancy
	
.macro	inp_buf
.if	@0
	ld	temp2, Z+
	tst	temp2
	breq	isrsav		;free Q place?
	inp_buf	(@0-1)
.endif
.endmacro

	inp_buf intsiz
	
	sts	intovf, temp1	;mark overflow with prog addr
	rjmp	isrbye
	
isrsav:	st	-Z, temp1	;save interrupt address in queue
	lds	temp1, intswi
	sbrs	temp1, 7	;skip if interrupts off
	sbr	temp0, exp2(SREG_T) ;T bit position

isrbye:	ld	zh, Y+
	ld	zl, Y+
	ld	temp2, Y+
	ld	temp1, Y+
	out_	SREG, temp0
	ld	temp0, Y+
	reti
