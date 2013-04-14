\ Partname: AT90USB1286
\ generated automatically

\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
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
&39 constant DDRC	\ Port C Data Direction Register
&38 constant PINC	\ Port C Input Pins
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins
\ PORTE
&46 constant PORTE	\ Data Register, Port E
&45 constant DDRE	\ Data Direction Register, Port E
&44 constant PINE	\ Input Pins, Port E
\ PORTF
&49 constant PORTF	\ Data Register, Port F
&48 constant DDRF	\ Data Direction Register, Port F
&47 constant PINF	\ Input Pins, Port F
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
  $80 constant MCUCR_JTD \ JTAG Interface Disable
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $10 constant MCUSR_JTRF \ JTAG Reset Flag
  $08 constant MCUSR_WDRF \ Watchdog Reset Flag
  $04 constant MCUSR_BORF \ Brown-out Reset Flag
  $02 constant MCUSR_EXTRF \ External Reset Flag
  $01 constant MCUSR_PORF \ Power-on reset flag
&116 constant XMCRA	\ External Memory Control Register A
  $80 constant XMCRA_SRE \ External SRAM Enable
  $70 constant XMCRA_SRL \ Wait state page limit
  $0C constant XMCRA_SRW1 \ Wait state select bit upper page
  $03 constant XMCRA_SRW0 \ Wait state select bit lower page
&117 constant XMCRB	\ External Memory Control Register B
  $80 constant XMCRB_XMBK \ External Memory Bus Keeper Enable
  $07 constant XMCRB_XMM \ External Memory High Mask
&102 constant OSCCAL	\ Oscillator Calibration Value
&97 constant CLKPR	\ 
  $80 constant CLKPR_CLKPCE \ 
  $0F constant CLKPR_CLKPS \ 
&83 constant SMCR	\ Sleep Mode Control Register
  $0E constant SMCR_SM \ Sleep Mode Select bits
  $01 constant SMCR_SE \ Sleep Enable
&92 constant EIND	\ Extended Indirect Register
&91 constant RAMPZ	\ RAM Page Z Select Register
&75 constant GPIOR2	\ General Purpose IO Register 2
  $FF constant GPIOR2_GPIOR \ General Purpose IO Register 2 bis
&74 constant GPIOR1	\ General Purpose IO Register 1
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
&101 constant PRR1	\ Power Reduction Register1
  $80 constant PRR1_PRUSB \ Power Reduction USB
  $08 constant PRR1_PRTIM3 \ Power Reduction Timer/Counter3
  $01 constant PRR1_PRUSART1 \ Power Reduction USART1
&100 constant PRR0	\ Power Reduction Register0
  $80 constant PRR0_PRTWI \ Power Reduction TWI
  $40 constant PRR0_PRTIM2 \ Power Reduction Timer/Counter2
  $20 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $08 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR0_PRSPI \ Power Reduction Serial Peripheral Interface
  $01 constant PRR0_PRADC \ Power Reduction ADC
\ TWI
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
\ USART1
&206 constant UDR1	\ USART I/O Data Register
&200 constant UCSR1A	\ USART Control and Status Register A
  $80 constant UCSR1A_RXC1 \ USART Receive Complete
  $40 constant UCSR1A_TXC1 \ USART Transmitt Complete
  $20 constant UCSR1A_UDRE1 \ USART Data Register Empty
  $10 constant UCSR1A_FE1 \ Framing Error
  $08 constant UCSR1A_DOR1 \ Data overRun
  $04 constant UCSR1A_UPE1 \ Parity Error
  $02 constant UCSR1A_U2X1 \ Double the USART transmission speed
  $01 constant UCSR1A_MPCM1 \ Multi-processor Communication Mode
&201 constant UCSR1B	\ USART Control and Status Register B
  $80 constant UCSR1B_RXCIE1 \ RX Complete Interrupt Enable
  $40 constant UCSR1B_TXCIE1 \ TX Complete Interrupt Enable
  $20 constant UCSR1B_UDRIE1 \ USART Data register Empty Interrupt Enable
  $10 constant UCSR1B_RXEN1 \ Receiver Enable
  $08 constant UCSR1B_TXEN1 \ Transmitter Enable
  $04 constant UCSR1B_UCSZ12 \ Character Size
  $02 constant UCSR1B_RXB81 \ Receive Data Bit 8
  $01 constant UCSR1B_TXB81 \ Transmit Data Bit 8
&202 constant UCSR1C	\ USART Control and Status Register C
  $C0 constant UCSR1C_UMSEL1 \ USART Mode Select
  $30 constant UCSR1C_UPM1 \ Parity Mode Bits
  $08 constant UCSR1C_USBS1 \ Stop Bit Select
  $06 constant UCSR1C_UCSZ1 \ Character Size
  $01 constant UCSR1C_UCPOL1 \ Clock Polarity
&204 constant UBRR1	\ USART Baud Rate Register  Bytes
\ USB_DEVICE
&244 constant UEINT	\ 
&243 constant UEBCHX	\ 
&242 constant UEBCLX	\ 
&241 constant UEDATX	\ 
&240 constant UEIENX	\ 
  $80 constant UEIENX_FLERRE \ 
  $40 constant UEIENX_NAKINE \ 
  $10 constant UEIENX_NAKOUTE \ 
  $08 constant UEIENX_RXSTPE \ 
  $04 constant UEIENX_RXOUTE \ 
  $02 constant UEIENX_STALLEDE \ 
  $01 constant UEIENX_TXINE \ 
&239 constant UESTA1X	\ 
  $04 constant UESTA1X_CTRLDIR \ 
  $03 constant UESTA1X_CURRBK \ 
&238 constant UESTA0X	\ 
  $80 constant UESTA0X_CFGOK \ 
  $40 constant UESTA0X_OVERFI \ 
  $20 constant UESTA0X_UNDERFI \ 
  $0C constant UESTA0X_DTSEQ \ 
  $03 constant UESTA0X_NBUSYBK \ 
&237 constant UECFG1X	\ 
  $70 constant UECFG1X_EPSIZE \ 
  $0C constant UECFG1X_EPBK \ 
  $02 constant UECFG1X_ALLOC \ 
&236 constant UECFG0X	\ 
  $C0 constant UECFG0X_EPTYPE \ 
  $01 constant UECFG0X_EPDIR \ 
&235 constant UECONX	\ 
  $20 constant UECONX_STALLRQ \ 
  $10 constant UECONX_STALLRQC \ 
  $08 constant UECONX_RSTDT \ 
  $01 constant UECONX_EPEN \ 
&234 constant UERST	\ 
  $7F constant UERST_EPRST \ 
&233 constant UENUM	\ 
&232 constant UEINTX	\ 
  $80 constant UEINTX_FIFOCON \ 
  $40 constant UEINTX_NAKINI \ 
  $20 constant UEINTX_RWAL \ 
  $10 constant UEINTX_NAKOUTI \ 
  $08 constant UEINTX_RXSTPI \ 
  $04 constant UEINTX_RXOUTI \ 
  $02 constant UEINTX_STALLEDI \ 
  $01 constant UEINTX_TXINI \ 
&230 constant UDMFN	\ 
  $10 constant UDMFN_FNCERR \ 
&228 constant UDFNUM	\ 
&227 constant UDADDR	\ 
  $80 constant UDADDR_ADDEN \ 
  $7F constant UDADDR_UADD \ 
&226 constant UDIEN	\ 
  $40 constant UDIEN_UPRSME \ 
  $20 constant UDIEN_EORSME \ 
  $10 constant UDIEN_WAKEUPE \ 
  $08 constant UDIEN_EORSTE \ 
  $04 constant UDIEN_SOFE \ 
  $01 constant UDIEN_SUSPE \ 
&225 constant UDINT	\ 
  $40 constant UDINT_UPRSMI \ 
  $20 constant UDINT_EORSMI \ 
  $10 constant UDINT_WAKEUPI \ 
  $08 constant UDINT_EORSTI \ 
  $04 constant UDINT_SOFI \ 
  $01 constant UDINT_SUSPI \ 
&224 constant UDCON	\ 
  $04 constant UDCON_LSM \ 
  $02 constant UDCON_RMWKUP \ 
  $01 constant UDCON_DETACH \ 
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
\ EEPROM
&65 constant EEAR	\ EEPROM Address Register Low Bytes
&64 constant EEDR	\ EEPROM Data Register
&63 constant EECR	\ EEPROM Control Register
  $30 constant EECR_EEPM \ EEPROM Programming Mode Bits
  $08 constant EECR_EERIE \ EEPROM Ready Interrupt Enable
  $04 constant EECR_EEMPE \ EEPROM Master Write Enable
  $02 constant EECR_EEPE \ EEPROM Write Enable
  $01 constant EECR_EERE \ EEPROM Read Enable
\ TIMER_COUNTER_0
&72 constant OCR0B	\ Timer/Counter0 Output Compare Register
&71 constant OCR0A	\ Timer/Counter0 Output Compare Register
&70 constant TCNT0	\ Timer/Counter0
&69 constant TCCR0B	\ Timer/Counter Control Register B
  $80 constant TCCR0B_FOC0A \ Force Output Compare A
  $40 constant TCCR0B_FOC0B \ Force Output Compare B
  $08 constant TCCR0B_WGM02 \ 
  $07 constant TCCR0B_CS0 \ Clock Select
&68 constant TCCR0A	\ Timer/Counter  Control Register A
  $C0 constant TCCR0A_COM0A \ Compare Output Mode, Phase Correct PWM Mode
  $30 constant TCCR0A_COM0B \ Compare Output Mode, Fast PWm
  $03 constant TCCR0A_WGM0 \ Waveform Generation Mode
&110 constant TIMSK0	\ Timer/Counter0 Interrupt Mask Register
  $04 constant TIMSK0_OCIE0B \ Timer/Counter0 Output Compare Match B Interrupt Enable
  $02 constant TIMSK0_OCIE0A \ Timer/Counter0 Output Compare Match A Interrupt Enable
  $01 constant TIMSK0_TOIE0 \ Timer/Counter0 Overflow Interrupt Enable
&53 constant TIFR0	\ Timer/Counter0 Interrupt Flag register
  $04 constant TIFR0_OCF0B \ Timer/Counter0 Output Compare Flag 0B
  $02 constant TIFR0_OCF0A \ Timer/Counter0 Output Compare Flag 0A
  $01 constant TIFR0_TOV0 \ Timer/Counter0 Overflow Flag
&67 constant GTCCR	\ General Timer/Counter Control Register
  $80 constant GTCCR_TSM \ Timer/Counter Synchronization Mode
  $01 constant GTCCR_PSRSYNC \ Prescaler Reset Timer/Counter1 and Timer/Counter0
\ TIMER_COUNTER_2
&112 constant TIMSK2	\ Timer/Counter Interrupt Mask register
  $04 constant TIMSK2_OCIE2B \ Timer/Counter2 Output Compare Match B Interrupt Enable
  $02 constant TIMSK2_OCIE2A \ Timer/Counter2 Output Compare Match A Interrupt Enable
  $01 constant TIMSK2_TOIE2 \ Timer/Counter2 Overflow Interrupt Enable
&55 constant TIFR2	\ Timer/Counter Interrupt Flag Register
  $04 constant TIFR2_OCF2B \ Output Compare Flag 2B
  $02 constant TIFR2_OCF2A \ Output Compare Flag 2A
  $01 constant TIFR2_TOV2 \ Timer/Counter2 Overflow Flag
&176 constant TCCR2A	\ Timer/Counter2 Control Register A
  $C0 constant TCCR2A_COM2A \ Compare Output Mode bits
  $30 constant TCCR2A_COM2B \ Compare Output Mode bits
  $03 constant TCCR2A_WGM2 \ Waveform Genration Mode
&177 constant TCCR2B	\ Timer/Counter2 Control Register B
  $80 constant TCCR2B_FOC2A \ Force Output Compare A
  $40 constant TCCR2B_FOC2B \ Force Output Compare B
  $08 constant TCCR2B_WGM22 \ Waveform Generation Mode
  $07 constant TCCR2B_CS2 \ Clock Select bits
&178 constant TCNT2	\ Timer/Counter2
&180 constant OCR2B	\ Timer/Counter2 Output Compare Register B
&179 constant OCR2A	\ Timer/Counter2 Output Compare Register A
&182 constant ASSR	\ Asynchronous Status Register
  $40 constant ASSR_EXCLK \ Enable External Clock Input
  $20 constant ASSR_AS2 \ Asynchronous Timer/Counter2
  $10 constant ASSR_TCN2UB \ Timer/Counter2 Update Busy
  $08 constant ASSR_OCR2AUB \ Output Compare Register2 Update Busy
  $04 constant ASSR_OCR2BUB \ Output Compare Register 2 Update Busy
  $02 constant ASSR_TCR2AUB \ Timer/Counter Control Register2 Update Busy
  $01 constant ASSR_TCR2BUB \ Timer/Counter Control Register2 Update Busy
\ TIMER_COUNTER_3
&144 constant TCCR3A	\ Timer/Counter3 Control Register A
  $C0 constant TCCR3A_COM3A \ Compare Output Mode 1A, bits
  $30 constant TCCR3A_COM3B \ Compare Output Mode 3B, bits
  $0C constant TCCR3A_COM3C \ Compare Output Mode 3C, bits
  $03 constant TCCR3A_WGM3 \ Waveform Generation Mode
&145 constant TCCR3B	\ Timer/Counter3 Control Register B
  $80 constant TCCR3B_ICNC3 \ Input Capture 3 Noise Canceler
  $40 constant TCCR3B_ICES3 \ Input Capture 3 Edge Select
  $18 constant TCCR3B_WGM3 \ Waveform Generation Mode
  $07 constant TCCR3B_CS3 \ Prescaler source of Timer/Counter 3
&146 constant TCCR3C	\ Timer/Counter 3 Control Register C
  $80 constant TCCR3C_FOC3A \ Force Output Compare 3A
  $40 constant TCCR3C_FOC3B \ Force Output Compare 3B
  $20 constant TCCR3C_FOC3C \ Force Output Compare 3C
&148 constant TCNT3	\ Timer/Counter3  Bytes
&152 constant OCR3A	\ Timer/Counter3 Output Compare Register A  Bytes
&154 constant OCR3B	\ Timer/Counter3 Output Compare Register B  Bytes
&156 constant OCR3C	\ Timer/Counter3 Output Compare Register B  Bytes
&150 constant ICR3	\ Timer/Counter3 Input Capture Register  Bytes
&113 constant TIMSK3	\ Timer/Counter3 Interrupt Mask Register
  $20 constant TIMSK3_ICIE3 \ Timer/Counter3 Input Capture Interrupt Enable
  $08 constant TIMSK3_OCIE3C \ Timer/Counter3 Output Compare C Match Interrupt Enable
  $04 constant TIMSK3_OCIE3B \ Timer/Counter3 Output Compare B Match Interrupt Enable
  $02 constant TIMSK3_OCIE3A \ Timer/Counter3 Output Compare A Match Interrupt Enable
  $01 constant TIMSK3_TOIE3 \ Timer/Counter3 Overflow Interrupt Enable
&56 constant TIFR3	\ Timer/Counter3 Interrupt Flag register
  $20 constant TIFR3_ICF3 \ Input Capture Flag 3
  $08 constant TIFR3_OCF3C \ Output Compare Flag 3C
  $04 constant TIFR3_OCF3B \ Output Compare Flag 3B
  $02 constant TIFR3_OCF3A \ Output Compare Flag 3A
  $01 constant TIFR3_TOV3 \ Timer/Counter3 Overflow Flag
\ TIMER_COUNTER_1
&128 constant TCCR1A	\ Timer/Counter1 Control Register A
  $C0 constant TCCR1A_COM1A \ Compare Output Mode 1A, bits
  $30 constant TCCR1A_COM1B \ Compare Output Mode 1B, bits
  $0C constant TCCR1A_COM1C \ Compare Output Mode 1C, bits
  $03 constant TCCR1A_WGM1 \ Waveform Generation Mode
&129 constant TCCR1B	\ Timer/Counter1 Control Register B
  $80 constant TCCR1B_ICNC1 \ Input Capture 1 Noise Canceler
  $40 constant TCCR1B_ICES1 \ Input Capture 1 Edge Select
  $18 constant TCCR1B_WGM1 \ Waveform Generation Mode
  $07 constant TCCR1B_CS1 \ Prescaler source of Timer/Counter 1
&130 constant TCCR1C	\ Timer/Counter 1 Control Register C
  $80 constant TCCR1C_FOC1A \ Force Output Compare 1A
  $40 constant TCCR1C_FOC1B \ Force Output Compare 1B
  $20 constant TCCR1C_FOC1C \ Force Output Compare 1C
&132 constant TCNT1	\ Timer/Counter1  Bytes
&136 constant OCR1A	\ Timer/Counter1 Output Compare Register A  Bytes
&138 constant OCR1B	\ Timer/Counter1 Output Compare Register B  Bytes
&140 constant OCR1C	\ Timer/Counter1 Output Compare Register C  Bytes
&134 constant ICR1	\ Timer/Counter1 Input Capture Register  Bytes
&111 constant TIMSK1	\ Timer/Counter1 Interrupt Mask Register
  $20 constant TIMSK1_ICIE1 \ Timer/Counter1 Input Capture Interrupt Enable
  $08 constant TIMSK1_OCIE1C \ Timer/Counter1 Output Compare C Match Interrupt Enable
  $04 constant TIMSK1_OCIE1B \ Timer/Counter1 Output Compare B Match Interrupt Enable
  $02 constant TIMSK1_OCIE1A \ Timer/Counter1 Output Compare A Match Interrupt Enable
  $01 constant TIMSK1_TOIE1 \ Timer/Counter1 Overflow Interrupt Enable
&54 constant TIFR1	\ Timer/Counter1 Interrupt Flag register
  $20 constant TIFR1_ICF1 \ Input Capture Flag 1
  $08 constant TIFR1_OCF1C \ Output Compare Flag 1C
  $04 constant TIFR1_OCF1B \ Output Compare Flag 1B
  $02 constant TIFR1_OCF1A \ Output Compare Flag 1A
  $01 constant TIFR1_TOV1 \ Timer/Counter1 Overflow Flag
\ JTAG
&81 constant OCDR	\ On-Chip Debug Related Register in I/O Memory
\ EXTERNAL_INTERRUPT
&105 constant EICRA	\ External Interrupt Control Register A
  $C0 constant EICRA_ISC3 \ External Interrupt Sense Control Bit
  $30 constant EICRA_ISC2 \ External Interrupt Sense Control Bit
  $0C constant EICRA_ISC1 \ External Interrupt Sense Control Bit
  $03 constant EICRA_ISC0 \ External Interrupt Sense Control Bit
&106 constant EICRB	\ External Interrupt Control Register B
  $C0 constant EICRB_ISC7 \ External Interrupt 7-4 Sense Control Bit
  $30 constant EICRB_ISC6 \ External Interrupt 7-4 Sense Control Bit
  $0C constant EICRB_ISC5 \ External Interrupt 7-4 Sense Control Bit
  $03 constant EICRB_ISC4 \ External Interrupt 7-4 Sense Control Bit
&61 constant EIMSK	\ External Interrupt Mask Register
  $FF constant EIMSK_INT \ External Interrupt Request 7 Enable
&60 constant EIFR	\ External Interrupt Flag Register
  $FF constant EIFR_INTF \ External Interrupt Flags
&107 constant PCMSK0	\ Pin Change Mask Register 0
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $01 constant PCIFR_PCIF0 \ Pin Change Interrupt Flag 0
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $01 constant PCICR_PCIE0 \ Pin Change Interrupt Enable 0
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
  $07 constant ADCSRB_ADTS \ ADC Auto Trigger Sources
&126 constant DIDR0	\ Digital Input Disable Register 1
  $80 constant DIDR0_ADC7D \ ADC7 Digital input Disable
  $40 constant DIDR0_ADC6D \ ADC6 Digital input Disable
  $20 constant DIDR0_ADC5D \ ADC5 Digital input Disable
  $10 constant DIDR0_ADC4D \ ADC4 Digital input Disable
  $08 constant DIDR0_ADC3D \ ADC3 Digital input Disable
  $04 constant DIDR0_ADC2D \ ADC2 Digital input Disable
  $02 constant DIDR0_ADC1D \ ADC1 Digital input Disable
  $01 constant DIDR0_ADC0D \ ADC0 Digital input Disable
\ ANALOG_COMPARATOR
&80 constant ACSR	\ Analog Comparator Control And Status Register
  $80 constant ACSR_ACD \ Analog Comparator Disable
  $40 constant ACSR_ACBG \ Analog Comparator Bandgap Select
  $20 constant ACSR_ACO \ Analog Compare Output
  $10 constant ACSR_ACI \ Analog Comparator Interrupt Flag
  $08 constant ACSR_ACIE \ Analog Comparator Interrupt Enable
  $04 constant ACSR_ACIC \ Analog Comparator Input Capture Enable
  $03 constant ACSR_ACIS \ Analog Comparator Interrupt Mode Select bits
&127 constant DIDR1	\ 
  $02 constant DIDR1_AIN1D \ AIN1 Digital Input Disable
  $01 constant DIDR1_AIN0D \ AIN0 Digital Input Disable
\ PLL
&73 constant PLLCSR	\ PLL Status and Control register
  $1C constant PLLCSR_PLLP \ PLL prescaler Bits
  $02 constant PLLCSR_PLLE \ PLL Enable Bit
  $01 constant PLLCSR_PLOCK \ PLL Lock Status Bit
\ USB_GLOBAL
&218 constant USBINT	\ 
  $02 constant USBINT_IDTI \ 
  $01 constant USBINT_VBUSTI \ 
&217 constant USBSTA	\ 
  $08 constant USBSTA_SPEED \ 
  $02 constant USBSTA_ID \ 
  $01 constant USBSTA_VBUS \ 
&216 constant USBCON	\ USB General Control Register
  $80 constant USBCON_USBE \ 
  $40 constant USBCON_HOST \ 
  $20 constant USBCON_FRZCLK \ 
  $10 constant USBCON_OTGPADE \ 
  $02 constant USBCON_IDTE \ 
  $01 constant USBCON_VBUSTE \ 
&215 constant UHWCON	\ USB Hardware Configuration Register
  $80 constant UHWCON_UIMOD \ 
  $40 constant UHWCON_UIDE \ 
  $10 constant UHWCON_UVCONE \ 
  $01 constant UHWCON_UVREGE \ 

\ Interrupts
&2  constant INT0Addr \ External Interrupt Request 0
&4  constant INT1Addr \ External Interrupt Request 1
&6  constant INT2Addr \ External Interrupt Request 2
&8  constant INT3Addr \ External Interrupt Request 3
&10  constant INT4Addr \ External Interrupt Request 4
&12  constant INT5Addr \ External Interrupt Request 5
&14  constant INT6Addr \ External Interrupt Request 6
&16  constant INT7Addr \ External Interrupt Request 7
&18  constant PCINT0Addr \ Pin Change Interrupt Request 0
&20  constant USB_GENAddr \ USB General Interrupt Request
&22  constant USB_COMAddr \ USB Endpoint/Pipe Interrupt Communication Reque
&24  constant WDTAddr \ Watchdog Time-out Interrupt
&26  constant TIMER2_COMPAAddr \ Timer/Counter2 Compare Match A
&28  constant TIMER2_COMPBAddr \ Timer/Counter2 Compare Match B
&30  constant TIMER2_OVFAddr \ Timer/Counter2 Overflow
&32  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
&34  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
&36  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare Match B
&38  constant TIMER1_COMPCAddr \ Timer/Counter1 Compare Match C
&40  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&42  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
&44  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
&46  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&48  constant SPI__STCAddr \ SPI Serial Transfer Complete
&50  constant USART1__RXAddr \ USART1, Rx Complete
&52  constant USART1__UDREAddr \ USART1 Data register Empty
&54  constant USART1__TXAddr \ USART1, Tx Complete
&56  constant ANALOG_COMPAddr \ Analog Comparator
&58  constant ADCAddr \ ADC Conversion Complete
&60  constant EE_READYAddr \ EEPROM Ready
&62  constant TIMER3_CAPTAddr \ Timer/Counter3 Capture Event
&64  constant TIMER3_COMPAAddr \ Timer/Counter3 Compare Match A
&66  constant TIMER3_COMPBAddr \ Timer/Counter3 Compare Match B
&68  constant TIMER3_COMPCAddr \ Timer/Counter3 Compare Match C
&70  constant TIMER3_OVFAddr \ Timer/Counter3 Overflow
&72  constant TWIAddr \ 2-wire Serial Interface        
&74  constant SPM_READYAddr \ Store Program Memory Read
