.nolist
	.include "ATXmega128A1def.inc"
.list

.equ ramstart =  8192
.equ max_dict_addr = $F000 
.equ pclen = 3
.equ CELLSIZE = 2
; register name aliases
.equ SPL = CPU_SPL
.equ SPH = CPU_SPH
.equ SREG = CPU_SREG
.equ MCUSR = RST_STATUS

.macro readflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ CPU_RAMPZ, temp7
	elpm @0, Z+
	elpm @1, Z+
.endmacro
.macro writeflashcell
	clr temp7
	lsl zl
	rol zh
	rol temp7
	out_ CPU_RAMPZ, temp7
.endmacro
.equ intvecsize = 2 ; please verify; flash size: 131072 bytes
.equ INTVECTORS = 10
.org $200

; controller data area, environment query mcu-info
mcu_info:
mcu_ramsize:
	.dw 512
mcu_eepromsize:
	.dw 512
mcu_maxdp:
	.dw 4096 
mcu_numints:
	.dw 29
mcu_name:
	.dw 14
	.db "ATXMega 128 A1"
.set codestart=pc
