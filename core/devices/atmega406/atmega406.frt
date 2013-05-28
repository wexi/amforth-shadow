\ Partname: ATmega406
\ generated automatically

\ AD_CONVERTER
&124 constant VADMUX	\ The VADC multiplexer Selection Register
  $0F constant VADMUX_VADMUX \ Analog Channel and Gain Selection Bits
&120 constant VADC	\ VADC Data Register  Bytes
&122 constant VADCSR	\ The VADC Control and Status register
  $08 constant VADCSR_VADEN \ VADC Enable
  $04 constant VADCSR_VADSC \ VADC Satrt Conversion
  $02 constant VADCSR_VADCCIF \ VADC Conversion Complete Interrupt Flag
  $01 constant VADCSR_VADCCIE \ VADC Conversion Complete Interrupt Enable
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control 3 Bits
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control 2 Bits
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control 1 Bits
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control 0 Bits
&61 constant EIMSK	\ External Interrupt Mask Register
  $0F constant EIMSK_INT \ External Interrupt Request 1 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $0F constant EIFR_INTF \ External Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $03 constant PCICR_PCIE \ Pin Change Interrupt Enables
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $03 constant PCIFR_PCIF \ Pin Change Interrupt Flags
&108 constant PCMSK1	\ Pin Change Enable Mask Register 1
&107 constant PCMSK0	\ Pin Change Enable Mask Register 0
\ TIMER_COUNTER_1
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $08 constant TCCR1B_CTC1 \ Clear Timer/Counter on Compare Match
  $07 constant TCCR1B_CS1 \ Clock Select1 bits
&132 constant TCNT1	\ Timer Counter 1  Bytes
&136 constant OCR1AL	\ Output Compare Register 1A Low byte
&137 constant OCR1AH	\ Output Compare Register 1A High byte
&111 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $02 constant TIFR1_OCF1A \ Timer/Counter1 Output Compare Flag A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $01 constant GTCCR_PSRSYNC \ Prescaler Reset
\ WAKEUP_TIMER
&98 constant WUTCSR	\ Wake-up Timer Control Register
  $80 constant WUTCSR_WUTIF \ Wake-up Timer Interrupt Flag
  $40 constant WUTCSR_WUTIE \ Wake-up Timer Interrupt Enable
  $20 constant WUTCSR_WUTCF \ Wake-up timer Calibration Flag
  $10 constant WUTCSR_WUTR \ Wake-up Timer Reset
  $08 constant WUTCSR_WUTE \ Wake-up Timer Enable
  $07 constant WUTCSR_WUTP \ Wake-up Timer Prescaler Bits
\ BATTERY_PROTECTION
&248 constant BPPLR	\ Battery Protection Parameter Lock Register
  $02 constant BPPLR_BPPLE \ Battery Protection Parameter Lock Enable
  $01 constant BPPLR_BPPL \ Battery Protection Parameter Lock
&247 constant BPCR	\ Battery Protection Control Register
  $08 constant BPCR_DUVD \ 
  $04 constant BPCR_SCD \ 
  $02 constant BPCR_DCD \ 
  $01 constant BPCR_CCD \ 
&246 constant CBPTR	\ Current Battery Protection Timing Register
  $F0 constant CBPTR_SCPT \ 
  $0F constant CBPTR_OCPT \ 
&245 constant BPOCD	\ Battery Protection OverCurrent Detection Level Register
  $F0 constant BPOCD_DCDL \ 
  $0F constant BPOCD_CCDL \ 
&244 constant BPSCD	\ Battery Protection Short-Circuit Detection Level Register
  $0F constant BPSCD_SCDL \ 
&243 constant BPDUV	\ Battery Protection Deep Under Voltage Register
  $30 constant BPDUV_DUVT \ 
  $0F constant BPDUV_DUDL \ 
&242 constant BPIR	\ Battery Protection Interrupt Register
  $80 constant BPIR_DUVIF \ Deep Under-voltage Early Warning Interrupt Flag
  $40 constant BPIR_COCIF \ Charge Over-current Protection Activated Interrupt Flag
  $20 constant BPIR_DOCIF \ 
  $10 constant BPIR_SCIF \ 
  $08 constant BPIR_DUVIE \ Deep Under-voltage Early Warning Interrupt Enable
  $04 constant BPIR_COCIE \ 
  $02 constant BPIR_DOCIE \ 
  $01 constant BPIR_SCIE \ 
\ FET
&240 constant FCSR	\ 
  $20 constant FCSR_PWMOC \ Pulse Width Modulation of OC output
  $10 constant FCSR_PWMOPC \ Pulse Width Modulation Modulation of OPC output
  $08 constant FCSR_CPS \ Current Protection Status
  $04 constant FCSR_DFE \ Discharge FET Enable
  $02 constant FCSR_CFE \ Charge FET Enable
  $01 constant FCSR_PFD \ Precharge FET disable
\ COULOMB_COUNTER
&228 constant CADCSRA	\ CC-ADC Control and Status Register A
  $80 constant CADCSRA_CADEN \ When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.
  $20 constant CADCSRA_CADUB \ CC_ADC Update Busy
  $18 constant CADCSRA_CADAS \ CC_ADC Accumulate Current Select Bits
  $06 constant CADCSRA_CADSI \ The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
  $01 constant CADCSRA_CADSE \ When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
&229 constant CADCSRB	\ CC-ADC Control and Status Register B
  $40 constant CADCSRB_CADACIE \ 
  $20 constant CADCSRB_CADRCIE \ Regular Current Interrupt Enable
  $10 constant CADCSRB_CADICIE \ CAD Instantenous Current Interrupt Enable
  $04 constant CADCSRB_CADACIF \ CC-ADC Accumulate Current Interrupt Flag
  $02 constant CADCSRB_CADRCIF \ CC-ADC Accumulate Current Interrupt Flag
  $01 constant CADCSRB_CADICIF \ CC-ADC Instantaneous Current Interrupt Flag
&232 constant CADIC	\ CC-ADC Instantaneous Current
&227 constant CADAC3	\ ADC Accumulate Current
&226 constant CADAC2	\ ADC Accumulate Current
&225 constant CADAC1	\ ADC Accumulate Current
&224 constant CADAC0	\ ADC Accumulate Current
&230 constant CADRCC	\ CC-ADC Regular Charge Current
&231 constant CADRDC	\ CC-ADC Regular Discharge Current
\ CELL_BALANCING
&241 constant CBCR	\ Cell Balancing Control Register
  $0F constant CBCR_CBE \ Cell Balancing Enables
\ CPU
&95 constant SREG	\ Status Register
  $80 constant SREG_I \ Global Interrupt Enable
  $40 constant SREG_T \ Bit Copy Storage
  $20 constant SREG_H \ Half Carry Flag
  $10 constant SREG_S \ Sign Bit
  $08 constant SREG_V \ Two's Complement Overflow Flag
  $04 constant SREG_N \ Negative Flag
  $02 constant SREG_Z \ Zero Flag
  $01 constant SREG_C \ Carry Flag
&93 constant SP	\ Stack Pointer 
&85 constant MCUCR	\ MCU Control Register
  $80 constant MCUCR_JTD \ JTAG Disable
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BODRF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
&102 constant FOSCCAL	\ Fast Oscillator Calibration Value
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&75 constant GPIOR2	\ General Purpose IO Register 2
&74 constant GPIOR1	\ General Purpose IO Register 1
&62 constant GPIOR0	\ General Purpose IO Register 0
&192 constant CCSR	\ Clock Control and Status Register
  $02 constant CCSR_XOE \ 32 kHz Crystal Oscillator Enable
  $01 constant CCSR_ACS \ Asynchronous Clock Select
&126 constant DIDR0	\ Digital Input Disable Register
&100 constant PRR0	\ Power Reduction Register 0
  $08 constant PRR0_PRTWI \ Power Reduction TWI
  $04 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $02 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $01 constant PRR0_PRVADC \ Power Reduction V-ADC
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ TIMER_COUNTER_0
&68 constant TCCR0A	\ Timer/Counter0 Control Register
  $C0 constant TCCR0A_COM0A \ Force Output Compare
  $30 constant TCCR0A_COM0B \ 
  $03 constant TCCR0A_WGM0 \ Clock Select0 bits
&69 constant TCCR0B	\ Timer/Counter0 Control Register
  $80 constant TCCR0B_FOC0A \ Force Output Compare
  $40 constant TCCR0B_FOC0B \ Waveform Generation Mode
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select0 bits
&70 constant TCNT0	\ Timer Counter 0
&71 constant OCR0A	\ Output compare Register A
  $FF constant OCR0A_OCR0A \ 
&72 constant OCR0B	\ Output compare Register B
  $FF constant OCR0B_OCR0B \ 
&110 constant TIMSK0	\ Timer/Counter Interrupt Mask Register
  $04 constant TIMSK0_OCIE0B \ Output Compare Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Output Compare Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter Interrupt Flag register
  $04 constant TIFR0_OCF0B \ Output Compare Flag
  $02 constant TIFR0_OCF0A \ Output Compare Flag
  $01 constant TIFR0_TOV0 \ Overflow Flag
\ PORTA
&34 constant PORTA	\ Port A Data Register
&33 constant DDRA	\ Port A Data Direction Register
&32 constant PINA	\ Port A Input Pins
\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins
\ PORTC
&40 constant PORTC	\ Port C Data Register
\ PORTD
&43 constant PORTD	\ Data Register, Port D
&42 constant DDRD	\ Data Direction Register, Port D
&41 constant PIND	\ Input Pins, Port D
\ BOOT_LOAD
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $20 constant SPMCSR_SIGRD \ Signature Row Read
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
\ TWI
&190 constant TWBCSR	\ TWI Bus Control and Status Register
  $80 constant TWBCSR_TWBCIF \ TWI Bus Connect/Disconnect Interrupt Flag
  $40 constant TWBCSR_TWBCIE \ TWI Bus Connect/Disconnect Interrupt Enable
  $06 constant TWBCSR_TWBDT \ TWI Bus Disconnect Time-out Period
  $01 constant TWBCSR_TWBCIP \ TWI Bus Connect/Disconnect Interrupt Polarity
&189 constant TWAMR	\ TWI (Slave) Address Mask Register
  $FE constant TWAMR_TWAM \ 
&184 constant TWBR	\ TWI Bit Rate register
&188 constant TWCR	\ TWI Control Register
  $80 constant TWCR_TWINT \ TWI Interrupt Flag
  $40 constant TWCR_TWEA \ TWI Enable Acknowledge Bit
  $20 constant TWCR_TWSTA \ TWI Start Condition Bit
  $10 constant TWCR_TWSTO \ TWI Stop Condition Bit
  $08 constant TWCR_TWWC \ TWI Write Collition Flag
  $04 constant TWCR_TWEN \ TWI Enable Bit
  $01 constant TWCR_TWIE \ TWI Interrupt Enable
&185 constant TWSR	\ TWI Status Register
  $F8 constant TWSR_TWS \ TWI Status
  $03 constant TWSR_TWPS \ TWI Prescaler
&187 constant TWDR	\ TWI Data register
&186 constant TWAR	\ TWI (Slave) Address register
  $FE constant TWAR_TWA \ TWI (Slave) Address register Bits
  $01 constant TWAR_TWGCE \ TWI General Call Recognition Enable Bit
\ BANDGAP
&209 constant BGCRR	\ Bandgap Calibration of Resistor Ladder
&208 constant BGCCR	\ Bandgap Calibration Register
  $80 constant BGCCR_BGD \ Setting the BGD bit to one will disable the bandgap voltage reference. This bit must be cleared before enabling CC-ADC or V-ADC, and must remain unset while either ADC is enabled.
  $3F constant BGCCR_BGCC \ BG Calibration of PTAT Current Bits
\ EEPROM
&65 constant EEAR	\ EEPROM Address Register  Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ EEPROM Programming Mode Bits
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Programming Enable
  $02 constant EECR_EEPE \ EEPROM Programming Enable
  $01 constant EECR_EERE \ EEPROM Read Enable

\ Interrupts
&2  constant BPINTAddr \ Battery Protection Interrupt
&4  constant INT0Addr \ External Interrupt Request 0
&6  constant INT1Addr \ External Interrupt Request 1
&8  constant INT2Addr \ External Interrupt Request 2
&10  constant INT3Addr \ External Interrupt Request 3
&12  constant PCINT0Addr \ Pin Change Interrupt 0
&14  constant PCINT1Addr \ Pin Change Interrupt 1
&16  constant WDTAddr \ Watchdog Timeout Interrupt
&18  constant WAKE_UPAddr \ Wakeup timer overflow
&20  constant TIM1_COMPAddr \ Timer/Counter 1 Compare Match
&22  constant TIM1_OVFAddr \ Timer/Counter 1 Overflow
&24  constant TIM0_COMPAAddr \ Timer/Counter0 Compare A Match
&26  constant TIM0_COMPBAddr \ Timer/Counter0 Compare B Match
&28  constant TIM0_OVFAddr \ Timer/Counter0 Overflow
&30  constant TWI_BUS_CDAddr \ Two-Wire Bus Connect/Disconnect
&32  constant TWIAddr \ Two-Wire Serial Interface
&34  constant VADCAddr \ Voltage ADC Conversion Complete
&36  constant CCADC_CONVAddr \ Coulomb Counter ADC Conversion Complete
&38  constant CCADC_REG_CURAddr \ Coloumb Counter ADC Regular Current
&40  constant CCADC_ACCAddr \ Coloumb Counter ADC Accumulator
&42  constant EE_READYAddr \ EEPROM Ready
&44  constant SPM_READYAddr \ Store Program Memory Ready
