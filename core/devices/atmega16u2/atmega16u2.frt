\ Partname: ATmega16U2
\ generated automatically

\ PORTB
&37 constant PORTB	\ Port B Data Register
&36 constant DDRB	\ Port B Data Direction Register
&35 constant PINB	\ Port B Input Pins
\ PORTD
&43 constant PORTD	\ Port D Data Register
&42 constant DDRD	\ Port D Data Direction Register
&41 constant PIND	\ Port D Input Pins
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
\ PLL
&73 constant PLLCSR	\ PLL Status and Control register
  $1C constant PLLCSR_PLLP \ PLL prescaler Bits
  $02 constant PLLCSR_PLLE \ PLL Enable Bit
  $01 constant PLLCSR_PLOCK \ PLL Lock Status Bit
\ USB_DEVICE
&244 constant UEINT	\ 
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
  $1F constant UERST_EPRST \ 
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
  $04 constant UDCON_RSTCPU \ 
  $02 constant UDCON_RMWKUP \ 
  $01 constant UDCON_DETACH \ 
&216 constant USBCON	\ USB General Control Register
  $80 constant USBCON_USBE \ 
  $20 constant USBCON_FRZCLK \ 
&99 constant REGCR	\ Regulator Control Register
  $01 constant REGCR_REGDIS \ 
\ PS2
&251 constant UPOE	\ 
  $C0 constant UPOE_UPWE \ 
  $30 constant UPOE_UPDRV \ 
  $08 constant UPOE_SCKI \ 
  $04 constant UPOE_DATAI \ 
  $02 constant UPOE_DPI \ 
  $01 constant UPOE_DMI \ 
&250 constant PS2CON	\ PS2 Pad Enable register
  $01 constant PS2CON_PS2EN \ Enable
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
  $10 constant MCUCR_PUD \ Pull-up disable
  $02 constant MCUCR_IVSEL \ Interrupt Vector Select
  $01 constant MCUCR_IVCE \ Interrupt Vector Change Enable
&84 constant MCUSR	\ MCU Status Register
  $20 constant MCUSR_USBRF \ USB reset flag
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
&92 constant EIND	\ Extended Indirect Register
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
  $01 constant PRR1_PRUSART1 \ Power Reduction USART1
&100 constant PRR0	\ Power Reduction Register0
  $20 constant PRR0_PRTIM0 \ Power Reduction Timer/Counter0
  $08 constant PRR0_PRTIM1 \ Power Reduction Timer/Counter1
  $04 constant PRR0_PRSPI \ Power Reduction Serial Peripheral Interface
&210 constant CLKSTA	\ 
  $02 constant CLKSTA_RCON \ 
  $01 constant CLKSTA_EXTON \ 
&209 constant CLKSEL1	\ 
  $F0 constant CLKSEL1_RCCKSEL \ 
  $0F constant CLKSEL1_EXCKSEL \ 
&208 constant CLKSEL0	\ 
  $C0 constant CLKSEL0_RCSUT \ 
  $30 constant CLKSEL0_EXSUT \ 
  $08 constant CLKSEL0_RCE \ 
  $04 constant CLKSEL0_EXTE \ 
  $01 constant CLKSEL0_CLKS \ 
&81 constant DWDR	\ debugWire communication register
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
  $FF constant PCMSK0_PCINT \ Pin Change Enable Masks
&108 constant PCMSK1	\ Pin Change Mask Register 1
  $1F constant PCMSK1_PCINT \ 
&59 constant PCIFR	\ Pin Change Interrupt Flag Register
  $03 constant PCIFR_PCIF \ Pin Change Interrupt Flags
&104 constant PCICR	\ Pin Change Interrupt Control Register
  $03 constant PCICR_PCIE \ Pin Change Interrupt Enables
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
&203 constant UCSR1D	\ USART Control and Status Register D
  $02 constant UCSR1D_CTSEN \ CTS Enable
  $01 constant UCSR1D_RTSEN \ RTS Enable
&204 constant UBRR1	\ USART Baud Rate Register  Bytes
\ WATCHDOG
&96 constant WDTCSR	\ Watchdog Timer Control Register
  $80 constant WDTCSR_WDIF \ Watchdog Timeout Interrupt Flag
  $40 constant WDTCSR_WDIE \ Watchdog Timeout Interrupt Enable
  $27 constant WDTCSR_WDP \ Watchdog Timer Prescaler Bits
  $10 constant WDTCSR_WDCE \ Watchdog Change Enable
  $08 constant WDTCSR_WDE \ Watch Dog Enable
&98 constant WDTCKD	\ Watchdog Timer Clock Divider
  $08 constant WDTCKD_WDEWIF \ Watchdog Early Warning Interrupt Flag
  $04 constant WDTCKD_WDEWIE \ Watchdog Early Warning Interrupt Enable
  $03 constant WDTCKD_WCLKD \ Watchdog Timer Clock Dividers
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
\ PORTC
&40 constant PORTC	\ Port C Data Register
  $F0 constant PORTC_PORTC \ Port C Data Register bits
  $07 constant PORTC_PORTC \ Port C Data Register bits
&39 constant DDRC	\ Port C Data Direction Register
  $F0 constant DDRC_DDC \ Port C Data Direction Register bits
  $07 constant DDRC_DDC \ Port C Data Direction Register bits
&38 constant PINC	\ Port C Input Pins
  $F0 constant PINC_PINC \ Port C Input Pins bits
  $07 constant PINC_PINC \ Port C Input Pins bits

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
&20  constant PCINT1Addr \ Pin Change Interrupt Request 1
&22  constant USB_GENAddr \ USB General Interrupt Request
&24  constant USB_COMAddr \ USB Endpoint/Pipe Interrupt Communication Reque
&26  constant WDTAddr \ Watchdog Time-out Interrupt
&28  constant TIMER1_CAPTAddr \ Timer/Counter2 Capture Event
&30  constant TIMER1_COMPAAddr \ Timer/Counter2 Compare Match B
&32  constant TIMER1_COMPBAddr \ Timer/Counter2 Compare Match B
&34  constant TIMER1_COMPCAddr \ Timer/Counter2 Compare Match C
&36  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
&38  constant TIMER0_COMPAAddr \ Timer/Counter0 Compare Match A
&40  constant TIMER0_COMPBAddr \ Timer/Counter0 Compare Match B
&42  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
&44  constant SPI__STCAddr \ SPI Serial Transfer Complete
&46  constant USART1__RXAddr \ USART1, Rx Complete
&48  constant USART1__UDREAddr \ USART1 Data register Empty
&50  constant USART1__TXAddr \ USART1, Tx Complete
&52  constant ANALOG_COMPAddr \ Analog Comparator
&54  constant EE_READYAddr \ EEPROM Ready
&56  constant SPM_READYAddr \ Store Program Memory Read
