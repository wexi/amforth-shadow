\ Partname: ATmega32M1
\ generated automatically

\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins
\ PORTC
&40 constant PORTC	\ Port C Data Register
&39 constant DDRC	\ Port C Data Direction Register
&38 constant PINC	\ Port C Input Pins
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins
\ CAN
&216 constant CANGCON	\ CAN General Control Register
  $80 constant CANGCON_ABRQ \ Abort Request
  $40 constant CANGCON_OVRQ \ Overload Frame Request
  $20 constant CANGCON_TTC \ Time Trigger Communication
  $10 constant CANGCON_SYNTTC \ Synchronization of TTC
  $08 constant CANGCON_LISTEN \ Listening Mode
  $04 constant CANGCON_TEST \ Test Mode
  $02 constant CANGCON_ENASTB \ Enable / Standby
  $01 constant CANGCON_SWRES \ Software Reset Request
&217 constant CANGSTA	\ CAN General Status Register
  $40 constant CANGSTA_OVFG \ Overload Frame Flag
  $10 constant CANGSTA_TXBSY \ Transmitter Busy
  $08 constant CANGSTA_RXBSY \ Receiver Busy
  $04 constant CANGSTA_ENFG \ Enable Flag
  $02 constant CANGSTA_BOFF \ Bus Off Mode
  $01 constant CANGSTA_ERRP \ Error Passive Mode
&218 constant CANGIT	\ CAN General Interrupt Register Flags
  $80 constant CANGIT_CANIT \ General Interrupt Flag
  $40 constant CANGIT_BOFFIT \ Bus Off Interrupt Flag
  $20 constant CANGIT_OVRTIM \ Overrun CAN Timer Flag
  $10 constant CANGIT_BXOK \ Burst Receive Interrupt Flag
  $08 constant CANGIT_SERG \ Stuff Error General Flag
  $04 constant CANGIT_CERG \ CRC Error General Flag
  $02 constant CANGIT_FERG \ Form Error General Flag
  $01 constant CANGIT_AERG \ Ackknowledgement Error General Flag
&219 constant CANGIE	\ CAN General Interrupt Enable Register
  $80 constant CANGIE_ENIT \ Enable all Interrupts
  $40 constant CANGIE_ENBOFF \ Enable Bus Off Interrupt
  $20 constant CANGIE_ENRX \ Enable Receive Interrupt
  $10 constant CANGIE_ENTX \ Enable Transmitt Interrupt
  $08 constant CANGIE_ENERR \ Enable MOb Error Interrupt
  $04 constant CANGIE_ENBX \ Enable Burst Receive Interrupt
  $02 constant CANGIE_ENERG \ Enable General Error Interrupt
  $01 constant CANGIE_ENOVRT \ Enable CAN Timer Overrun Interrupt
&220 constant CANEN2	\ Enable MOb Register 2
  $3F constant CANEN2_ENMOB \ Enable MObs
&221 constant CANEN1	\ Enable MOb Register 1(empty)
&222 constant CANIE2	\ Enable Interrupt MOb Register 2
  $3F constant CANIE2_IEMOB \ Interrupt Enable  MObs
&223 constant CANIE1	\ Enable Interrupt MOb Register 1 (empty)
&224 constant CANSIT2	\ CAN Status Interrupt MOb Register 2
  $3F constant CANSIT2_SIT \ Status of Interrupt MObs
&225 constant CANSIT1	\ CAN Status Interrupt MOb Register 1 (empty)
&226 constant CANBT1	\ CAN Bit Timing Register 1
  $7E constant CANBT1_BRP \ Baud Rate Prescaler bits
&227 constant CANBT2	\ CAN Bit Timing Register 2
  $60 constant CANBT2_SJW \ Re-Sync Jump Width bits
  $0E constant CANBT2_PRS \ Propagation Time Segment bits
&228 constant CANBT3	\ CAN Bit Timing Register 3
  $70 constant CANBT3_PHS2 \ Phase Segment 2 bits
  $0E constant CANBT3_PHS1 \ Phase Segment 1 bits
  $01 constant CANBT3_SMP \ Sample Type
&229 constant CANTCON	\ Timer Control Register
&230 constant CANTIML	\ Timer Register Low
&231 constant CANTIMH	\ Timer Register High
&232 constant CANTTCL	\ TTC Timer Register Low
&233 constant CANTTCH	\ TTC Timer Register High
&234 constant CANTEC	\ Transmit Error Counter Register
&235 constant CANREC	\ Receive Error Counter Register
&236 constant CANHPMOB	\ Highest Priority MOb Register
  $F0 constant CANHPMOB_HPMOB \ Highest Priority MOb Number bits
  $0F constant CANHPMOB_CGP \ CAN General Purpose bits
&237 constant CANPAGE	\ Page MOb Register
  $F0 constant CANPAGE_MOBNB \ MOb Number bits
  $08 constant CANPAGE_AINC \ MOb Data Buffer Auto Increment (Active Low)
  $07 constant CANPAGE_INDX \ Data Buffer Index bits
&238 constant CANSTMOB	\ MOb Status Register
  $80 constant CANSTMOB_DLCW \ Data Length Code Warning on MOb
  $40 constant CANSTMOB_TXOK \ Transmit OK on MOb
  $20 constant CANSTMOB_RXOK \ Receive OK on MOb
  $10 constant CANSTMOB_BERR \ Bit Error on MOb
  $08 constant CANSTMOB_SERR \ Stuff Error on MOb
  $04 constant CANSTMOB_CERR \ CRC Error on MOb
  $02 constant CANSTMOB_FERR \ Form Error on MOb
  $01 constant CANSTMOB_AERR \ Ackknowledgement Error on MOb
&239 constant CANCDMOB	\ MOb Control and DLC Register
  $C0 constant CANCDMOB_CONMOB \ MOb Config bits
  $20 constant CANCDMOB_RPLV \ Reply Valid
  $10 constant CANCDMOB_IDE \ Identifier Extension
  $0F constant CANCDMOB_DLC \ Data Length Code bits
&240 constant CANIDT4	\ Identifier Tag Register 4
  $F8 constant CANIDT4_IDT \ 
  $04 constant CANIDT4_RTRTAG \ 
  $02 constant CANIDT4_RB1TAG \ 
  $01 constant CANIDT4_RB0TAG \ 
&241 constant CANIDT3	\ Identifier Tag Register 3
&242 constant CANIDT2	\ Identifier Tag Register 2
&243 constant CANIDT1	\ Identifier Tag Register 1
&244 constant CANIDM4	\ Identifier Mask Register 4
&245 constant CANIDM3	\ Identifier Mask Register 3
&246 constant CANIDM2	\ Identifier Mask Register 2
&247 constant CANIDM1	\ Identifier Mask Register 1
&248 constant CANSTML	\ Time Stamp Register Low
&249 constant CANSTMH	\ Time Stamp Register High
&250 constant CANMSG	\ Message Data Register
\ ANALOG_COMPARATOR
&148 constant AC0CON	\ Analog Comparator 0 Control Register
  $80 constant AC0CON_AC0EN \ Analog Comparator 0 Enable Bit
  $40 constant AC0CON_AC0IE \ Analog Comparator 0 Interrupt Enable Bit
  $30 constant AC0CON_AC0IS \ Analog Comparator 0  Interrupt Select Bits
  $08 constant AC0CON_ACCKSEL \ Analog Comparator Clock Select
  $07 constant AC0CON_AC0M \ Analog Comparator 0 Multiplexer Register
&149 constant AC1CON	\ Analog Comparator 1 Control Register
  $80 constant AC1CON_AC1EN \ Analog Comparator 1 Enable Bit
  $40 constant AC1CON_AC1IE \ Analog Comparator 1 Interrupt Enable Bit
  $30 constant AC1CON_AC1IS \ Analog Comparator 1  Interrupt Select Bit
  $08 constant AC1CON_AC1ICE \ Analog Comparator 1 Interrupt Capture Enable Bit
  $07 constant AC1CON_AC1M \ Analog Comparator 1 Multiplexer Register
&150 constant AC2CON	\ Analog Comparator 2 Control Register
  $80 constant AC2CON_AC2EN \ Analog Comparator 2 Enable Bit
  $40 constant AC2CON_AC2IE \ Analog Comparator 2 Interrupt Enable Bit
  $30 constant AC2CON_AC2IS \ Analog Comparator 2  Interrupt Select Bit
  $07 constant AC2CON_AC2M \ Analog Comparator 2 Multiplexer Register
&151 constant AC3CON	\ Analog Comparator 3 Control Register
  $80 constant AC3CON_AC3EN \ Analog Comparator 3 Enable Bit
  $40 constant AC3CON_AC3IE \ Analog Comparator 3 Interrupt Enable Bit
  $30 constant AC3CON_AC3IS \ Analog Comparator 3  Interrupt Select Bit
  $07 constant AC3CON_AC3M \ Analog Comparator 3 Multiplexer Register
&80 constant ACSR	\ Analog Comparator Status Register
  $80 constant ACSR_AC3IF \ Analog Comparator 3 Interrupt Flag Bit
  $40 constant ACSR_AC2IF \ Analog Comparator 2 Interrupt Flag Bit
  $20 constant ACSR_AC1IF \ Analog Comparator 1  Interrupt Flag Bit
  $10 constant ACSR_AC0IF \ Analog Comparator 0 Interrupt Flag Bit
  $08 constant ACSR_AC3O \ Analog Comparator 3 Output Bit
  $04 constant ACSR_AC2O \ Analog Comparator 2 Output Bit
  $02 constant ACSR_AC1O \ Analog Comparator 1 Output Bit
  $01 constant ACSR_AC0O \ Analog Comparator 0 Output Bit
\ DA_CONVERTER
&146 constant DACH	\ DAC Data Register High Byte
  $FF constant DACH_DACH \ DAC Data Register High Byte Bits
&145 constant DACL	\ DAC Data Register Low Byte
  $FF constant DACL_DACL \ DAC Data Register Low Byte Bits
&144 constant DACON	\ DAC Control Register
  $80 constant DACON_DAATE \ DAC Auto Trigger Enable Bit
  $70 constant DACON_DATS \ DAC Trigger Selection Bits
  $04 constant DACON_DALA \ DAC Left Adjust
  $01 constant DACON_DAEN \ DAC Enable Bit
\ CPU
&87 constant SPMCSR	\ Store Program Memory Control Register
  $80 constant SPMCSR_SPMIE \ SPM Interrupt Enable
  $40 constant SPMCSR_RWWSB \ Read While Write Section Busy
  $20 constant SPMCSR_SIGRD \ Signature Row Read
  $10 constant SPMCSR_RWWSRE \ Read While Write section read enable
  $08 constant SPMCSR_BLBSET \ Boot Lock Bit Set
  $04 constant SPMCSR_PGWRT \ Page Write
  $02 constant SPMCSR_PGERS \ Page Erase
  $01 constant SPMCSR_SPMEN \ Store Program Memory Enable
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
  $80 constant MCUCR_SPIPS \ SPI Pin Select
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BORF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
&102 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&58 constant GPIOR2	\ General Purpose IO Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose IO Register 2 bis
&57 constant GPIOR1	\ General Purpose IO Register 1
  $FF constant GPIOR1_GPIOR \ General Purpose IO Register 1 bis
&62 constant GPIOR0	\ General Purpose IO Register 0
  $80 constant GPIOR0_GPIOR07 \ General Purpose IO Register 0 bit 7
  $40 constant GPIOR0_GPIOR06 \ General Purpose IO Register 0 bit 6
  $20 constant GPIOR0_GPIOR05 \ General Purpose IO Register 0 bit 5
  $10 constant GPIOR0_GPIOR04 \ General Purpose IO Register 0 bit 4
  $08 constant GPIOR0_GPIOR03 \ General Purpose IO Register 0 bit 3
  $04 constant GPIOR0_GPIOR02 \ General Purpose IO Register 0 bit 2
  $02 constant GPIOR0_GPIOR01 \ General Purpose IO Register 0 bit 1
  $01 constant GPIOR0_GPIOR00 \ General Purpose IO Register 0 bit 0
&73 constant PLLCSR	\ PLL Control And Status Register
  $04 constant PLLCSR_PLLF \ PLL Factor
  $02 constant PLLCSR_PLLE \ PLL Enable
  $01 constant PLLCSR_PLOCK \ PLL Lock Detector
&100 constant PRR	\ Power Reduction Register
  $40 constant PRR_PRCAN \ Power Reduction CAN
  $20 constant PRR_PRPSC \ Power Reduction PSC
  $10 constant PRR_PRTIM1 \ Power Reduction Timer/Counter1
  $08 constant PRR_PRTIM0 \ Power Reduction Timer/Counter0
  $04 constant PRR_PRSPI \ Power Reduction Serial Peripheral Interface
  $02 constant PRR_PRLIN \ Power Reduction LIN UART
  $01 constant PRR_PRADC \ Power Reduction ADC
\ PORTE
&46 constant PORTE	\ Port E Data Register
&45 constant DDRE	\ Port E Data Direction Register
&44 constant PINE	\ Port E Input Pins
\ TIMER_COUNTER_0
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare Match B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare Flag 0B
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag 0A
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&68 constant TCCR0A	\ Timer/Counter  Control Register A
  $C0 constant TCCR0A_COM0A \ Compare Output Mode, Phase Correct PWM Mode
  $30 constant TCCR0A_COM0B \ Compare Output Mode, Fast PWm
  $03 constant TCCR0A_WGM0 \ Waveform Generation Mode
&69 constant TCCR0B	\ Timer/Counter Control Register B
  $80 constant TCCR0B_FOC0A \ Force Output Compare A
  $40 constant TCCR0B_FOC0B \ Force Output Compare B
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select
&70 constant TCNT0	\ Timer/Counter0
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&72 constant OCR0B	\ Timer/Counter0 Output Compare Register
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $40 constant GTCCR_ICPSEL1 \ Timer1 Input Capture Selection Bit
  $01 constant GTCCR_PSR10 \ Prescaler Reset Timer/Counter1 and Timer/Counter0
\ TIMER_COUNTER_1
&111 constant TIMSK1	\ Timer/Counter Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output CompareB Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output CompareA Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&130 constant TCCR1C	\ Timer/Counter1 Control Register C
  $80 constant TCCR1C_FOC1A \ 
  $40 constant TCCR1C_FOC1B \ 
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
\ AD_CONVERTER
&124 constant ADMUX	\ The ADC multiplexer Selection Register
  $C0 constant ADMUX_REFS \ Reference Selection Bits
  $20 constant ADMUX_ADLAR \ Left Adjust Result
  $1F constant ADMUX_MUX \ Analog Channel and Gain Selection Bits
&122 constant ADCSRA	\ The ADC Control and Status register
  $80 constant ADCSRA_ADEN \ ADC Enable
  $40 constant ADCSRA_ADSC \ ADC Start Conversion
  $20 constant ADCSRA_ADATE \ ADC Auto Trigger Enable
  $10 constant ADCSRA_ADIF \ ADC Interrupt Flag
  $08 constant ADCSRA_ADIE \ ADC Interrupt Enable
  $07 constant ADCSRA_ADPS \ ADC  Prescaler Select Bits
&120 constant ADC	\ ADC Data Register  Bytes
&123 constant ADCSRB	\ ADC Control and Status Register B
  $80 constant ADCSRB_ADHSM \ ADC High Speed Mode
  $40 constant ADCSRB_ISRCEN \ Current Source Enable
  $20 constant ADCSRB_AREFEN \ Analog Reference pin Enable
  $0F constant ADCSRB_ADTS \ ADC Auto Trigger Sources
&126 constant DIDR0	\ Digital Input Disable Register 0
  $80 constant DIDR0_ADC7D \ ADC7 Digital input Disable
  $40 constant DIDR0_ADC6D \ ADC6 Digital input Disable
  $20 constant DIDR0_ADC5D \ ADC5 Digital input Disable
  $10 constant DIDR0_ADC4D \ ADC4 Digital input Disable
  $08 constant DIDR0_ADC3D \ ADC3 Digital input Disable
  $04 constant DIDR0_ADC2D \ ADC2 Digital input Disable
  $02 constant DIDR0_ADC1D \ ADC1 Digital input Disable
  $01 constant DIDR0_ADC0D \ ADC0 Digital input Disable
&127 constant DIDR1	\ Digital Input Disable Register 0
  $40 constant DIDR1_AMP2PD \ AMP2P Pin Digital input Disable
  $20 constant DIDR1_ACMP0D \ ACMP0 Pin Digital input Disable
  $10 constant DIDR1_AMP0PD \ AMP0P Pin Digital input Disable
  $08 constant DIDR1_AMP0ND \ AMP0N Pin Digital input Disable
  $04 constant DIDR1_ADC10D \ ADC10 Pin Digital input Disable
  $02 constant DIDR1_ADC9D \ ADC9 Pin Digital input Disable
  $01 constant DIDR1_ADC8D \ ADC8 Pin Digital input Disable
&117 constant AMP0CSR	\ 
  $80 constant AMP0CSR_AMP0EN \ 
  $40 constant AMP0CSR_AMP0IS \ 
  $30 constant AMP0CSR_AMP0G \ 
  $08 constant AMP0CSR_AMPCMP0 \ Amplifier 0 - Comparator 0 Connection
  $07 constant AMP0CSR_AMP0TS \ 
&118 constant AMP1CSR	\ 
  $80 constant AMP1CSR_AMP1EN \ 
  $40 constant AMP1CSR_AMP1IS \ 
  $30 constant AMP1CSR_AMP1G \ 
  $08 constant AMP1CSR_AMPCMP1 \ Amplifier 1 - Comparator 1 Connection
  $07 constant AMP1CSR_AMP1TS \ 
&119 constant AMP2CSR	\ 
  $80 constant AMP2CSR_AMP2EN \ 
  $40 constant AMP2CSR_AMP2IS \ 
  $30 constant AMP2CSR_AMP2G \ 
  $08 constant AMP2CSR_AMPCMP2 \ Amplifier 2 - Comparator 2 Connection
  $07 constant AMP2CSR_AMP2TS \ 
\ LINUART
&200 constant LINCR	\ LIN Control Register
  $80 constant LINCR_LSWRES \ Software Reset
  $40 constant LINCR_LIN13 \ LIN Standard
  $30 constant LINCR_LCONF \ LIN Configuration bits
  $08 constant LINCR_LENA \ LIN or UART Enable
  $07 constant LINCR_LCMD \ LIN Command and Mode bits
&201 constant LINSIR	\ LIN Status and Interrupt Register
  $E0 constant LINSIR_LIDST \ Identifier Status bits
  $10 constant LINSIR_LBUSY \ Busy Signal
  $08 constant LINSIR_LERR \ Error Interrupt
  $04 constant LINSIR_LIDOK \ Identifier Interrupt
  $02 constant LINSIR_LTXOK \ Transmit Performed Interrupt
  $01 constant LINSIR_LRXOK \ Receive Performed Interrupt
&202 constant LINENIR	\ LIN Enable Interrupt Register
  $08 constant LINENIR_LENERR \ Enable Error Interrupt
  $04 constant LINENIR_LENIDOK \ Enable Identifier Interrupt
  $02 constant LINENIR_LENTXOK \ Enable Transmit Performed Interrupt
  $01 constant LINENIR_LENRXOK \ Enable Receive Performed Interrupt
&203 constant LINERR	\ LIN Error Register
  $80 constant LINERR_LABORT \ Abort Flag
  $40 constant LINERR_LTOERR \ Frame Time Out Error Flag
  $20 constant LINERR_LOVERR \ Overrun Error Flag
  $10 constant LINERR_LFERR \ Framing Error Flag
  $08 constant LINERR_LSERR \ Synchronization Error Flag
  $04 constant LINERR_LPERR \ Parity Error Flag
  $02 constant LINERR_LCERR \ Checksum Error Flag
  $01 constant LINERR_LBERR \ Bit Error Flag
&204 constant LINBTR	\ LIN Bit Timing Register
  $80 constant LINBTR_LDISR \ Disable Bit Timing Resynchronization
  $3F constant LINBTR_LBT \ LIN Bit Timing bits
&205 constant LINBRRL	\ LIN Baud Rate Low Register
  $FF constant LINBRRL_LDIV \ 
&206 constant LINBRRH	\ LIN Baud Rate High Register
  $0F constant LINBRRH_LDIV \ 
&207 constant LINDLR	\ LIN Data Length Register
  $F0 constant LINDLR_LTXDL \ LIN Transmit Data Length bits
  $0F constant LINDLR_LRXDL \ LIN Receive Data Length bits
&208 constant LINIDR	\ LIN Identifier Register
  $C0 constant LINIDR_LP \ Parity bits
  $3F constant LINIDR_LID \ Identifier bit 5 or Data Length bits
&209 constant LINSEL	\ LIN Data Buffer Selection Register
  $08 constant LINSEL_LAINC \ Auto Increment of Data Buffer Index (Active Low)
  $07 constant LINSEL_LINDX \ FIFO LIN Data Buffer Index bits
&210 constant LINDAT	\ LIN Data Register
  $FF constant LINDAT_LDATA \ 
\ SPI
&76 constant SPCR	\ SPI Control Register
  $80 constant SPCR_SPIE \ SPI Interrupt Enable
  $40 constant SPCR_SPE \ SPI Enable
  $20 constant SPCR_DORD \ Data Order
  $10 constant SPCR_MSTR \ Master/Slave Select
  $08 constant SPCR_CPOL \ Clock polarity
  $04 constant SPCR_CPHA \ Clock Phase
  $03 constant SPCR_SPR \ SPI Clock Rate Selects
&77 constant SPSR	\ SPI Status Register
  $80 constant SPSR_SPIF \ SPI Interrupt Flag
  $40 constant SPSR_WCOL \ Write Collision Flag
  $01 constant SPSR_SPI2X \ Double SPI Speed Bit
&78 constant SPDR	\ SPI Data Register
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control 1 Bits
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control 0 Bits
&61 constant EIMSK	\ External Interrupt Mask Register
  $0F constant EIMSK_INT \ External Interrupt Request 3 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $0F constant EIFR_INTF \ External Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $0F constant PCICR_PCIE \ Pin Change Interrupt Enables
&109 constant PCMSK3	\ Pin Change Mask Register 3
  $07 constant PCMSK3_PCINT \ Pin Change Enable Masks
&108 constant PCMSK2	\ Pin Change Mask Register 2
  $FF constant PCMSK2_PCINT \ Pin Change Enable Masks
&107 constant PCMSK1	\ Pin Change Mask Register 1
  $FF constant PCMSK1_PCINT \ Pin Change Enable Masks
&106 constant PCMSK0	\ Pin Change Mask Register 0
  $FF constant PCMSK0_PCINT \ Pin Change Enable Masks
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $0F constant PCIFR_PCIF \ Pin Change Interrupt Flags
\ EEPROM
&65 constant EEAR	\ EEPROM Read/Write Access
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ 
  $08 constant EECR_EERIE \ EEProm Ready Interrupt Enable
  $04 constant EECR_EEMWE \ EEPROM Master Write Enable
  $02 constant EECR_EEWE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ PSC
&188 constant PIFR	\ PSC Interrupt Flag Register
  $0E constant PIFR_PEV \ PSC External Event 2 Interrupt
  $01 constant PIFR_PEOP \ PSC End of Cycle Interrupt
&187 constant PIM	\ PSC Interrupt Mask Register
  $0E constant PIM_PEVE \ External Event 2 Interrupt Enable
  $01 constant PIM_PEOPE \ PSC End of Cycle Interrupt Enable
&186 constant PMIC2	\ PSC Module 2 Input Control Register
  $80 constant PMIC2_POVEN2 \ PSC Module 2 Overlap Enable
  $40 constant PMIC2_PISEL2 \ PSC Module 2 Input Select
  $20 constant PMIC2_PELEV2 \ PSC Module 2 Input Level Selector
  $10 constant PMIC2_PFLTE2 \ PSC Module 2 Input Filter Enable
  $08 constant PMIC2_PAOC2 \ PSC Module 2 Asynchronous Output Control
  $07 constant PMIC2_PRFM2 \ PSC Module 2 Input Mode bits
&185 constant PMIC1	\ PSC Module 1 Input Control Register
  $80 constant PMIC1_POVEN1 \ PSC Module 1 Overlap Enable
  $40 constant PMIC1_PISEL1 \ PSC Module 1 Input Select
  $20 constant PMIC1_PELEV1 \ PSC Module 1 Input Level Selector
  $10 constant PMIC1_PFLTE1 \ PSC Module 1 Input Filter Enable
  $08 constant PMIC1_PAOC1 \ PSC Module 1 Asynchronous Output Control
  $07 constant PMIC1_PRFM1 \ PSC Module 1 Input Mode bits
&184 constant PMIC0	\ PSC Module 0 Input Control Register
  $80 constant PMIC0_POVEN0 \ PSC Module 0 Overlap Enable
  $40 constant PMIC0_PISEL0 \ PSC Module 0 Input Select
  $20 constant PMIC0_PELEV0 \ PSC Module 0 Input Level Selector
  $10 constant PMIC0_PFLTE0 \ PSC Module 0 Input Filter Enable
  $08 constant PMIC0_PAOC0 \ PSC Module 0 Asynchronous Output Control
  $07 constant PMIC0_PRFM0 \ PSC Module 0 Input Mode bits
&183 constant PCTL	\ PSC Control Register
  $C0 constant PCTL_PPRE \ PSC Prescaler Select bits
  $20 constant PCTL_PCLKSEL \ PSC Input Clock Select
  $02 constant PCTL_PCCYC \ PSC Complete Cycle
  $01 constant PCTL_PRUN \ PSC Run
&182 constant POC	\ PSC Output Configuration
  $20 constant POC_POEN2B \ PSC Output 2B Enable
  $10 constant POC_POEN2A \ PSC Output 2A Enable
  $08 constant POC_POEN1B \ PSC Output 1B Enable
  $04 constant POC_POEN1A \ PSC Output 1A Enable
  $02 constant POC_POEN0B \ PSC Output 0B Enable
  $01 constant POC_POEN0A \ PSC Output 0A Enable
&181 constant PCNF	\ PSC Configuration Register
  $20 constant PCNF_PULOCK \ PSC Update Lock
  $10 constant PCNF_PMODE \ PSC Mode
  $08 constant PCNF_POPB \ PSC Output B Polarity
  $04 constant PCNF_POPA \ PSC Output A Polarity
&180 constant PSYNC	\ PSC Synchro Configuration
  $30 constant PSYNC_PSYNC2 \ Selection of Synchronization Out for ADC
  $0C constant PSYNC_PSYNC1 \ Selection of Synchronization Out for ADC
  $03 constant PSYNC_PSYNC0 \ Selection of Synchronization Out for ADC
&178 constant POCR_RB	\ PSC Output Compare RB Register 
&176 constant POCR2SB	\ PSC Module 2 Output Compare SB Register 
&174 constant POCR2RA	\ PSC Module 2 Output Compare RA Register 
&172 constant POCR2SA	\ PSC Module 2 Output Compare SA Register 
&170 constant POCR1SB	\ PSC Module 1 Output Compare SB Register 
&168 constant POCR1RA	\ PSC Module 1 Output Compare RA Register 
&166 constant POCR1SA	\ PSC Output Compare SA Register 
&164 constant POCR0SB	\ PSC Output Compare SB Register 
&162 constant POCR0RA	\ PSC Module 0 Output Compare RA Register 
&160 constant POCR0SA	\ PSC Module 0 Output Compare SA Register 

\ Interrupts
&2  constant ANACOMP0Addr \ Analog Comparator 0
&4  constant ANACOMP1Addr \ Analog Comparator 1
&6  constant ANACOMP2Addr \ Analog Comparator 2
&8  constant ANACOMP3Addr \ Analog Comparator 3
&10  constant PSC_FAULTAddr \ PSC Fault
&12  constant PSC_ECAddr \ PSC End of Cycle
&14  constant INT0Addr \ External Interrupt Request 0
&16  constant INT1Addr \ External Interrupt Request 1
&18  constant INT2Addr \ External Interrupt Request 2
&20  constant INT3Addr \ External Interrupt Request 3
&22  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&24  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&26  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
&28  constant TIMER1_OVFAddr \ Timer1/Counter1 Overflow
&30  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
&32  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
&34  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&36  constant CAN_INTAddr \ CAN MOB, Burst, General Errors
&38  constant CAN_TOVFAddr \ CAN Timer Overflow
&40  constant LIN_TCAddr \ LIN Transfer Complete
&42  constant LIN_ERRAddr \ LIN Error
&44  constant PCINT0Addr \ Pin Change Interrupt Request 0
&46  constant PCINT1Addr \ Pin Change Interrupt Request 1
&48  constant PCINT2Addr \ Pin Change Interrupt Request 2
&50  constant PCINT3Addr \ Pin Change Interrupt Request 3
&52  constant SPI__STCAddr \ SPI Serial Transfer Complete
&54  constant ADCAddr \ ADC Conversion Complete
&56  constant WDTAddr \ Watchdog Time-Out Interrupt
&58  constant EE_READYAddr \ EEPROM Ready
&60  constant SPM_READYAddr \ Store Program Memory Read
