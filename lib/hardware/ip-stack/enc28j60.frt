\ ==============================================================
decimal
marker cleanenc

 $0000 constant rxstart_init  \ Empfangsbufferanfang
 $17FF constant rxstop_init   \ Empfangsbufferende
 $1800 constant txstart_init  \ Sendebufferanfang
 $1FFF constant txstop_init   \ Sendebufferende
 $02C0 constant eth_max_framelen  \ Framelength (700 + 4 Byte)
\ *** eigene MAC Adresse ***
$00 constant Mymac1
$22 constant Mymac2
$F9 constant Mymac3
$01 constant Mymac4
$36 constant Mymac5
$B6 constant Mymac6
\ *** eigene IP Adresse ***
&192 constant Myip1
&168 constant Myip2
&002 constant Myip3
&079 constant Myip4

variable next_packet_ptr 0 next_packet_ptr !
variable packet_length 0 packet_length !
variable rx_stat 0 rx_stat !
variable eth_buffer eth_max_framelen allot \ Framelength(buffer)

\ Split Word ( n -- ch cl )
: n>cc dup $FF00 and >< swap $FF and ;

\ ENC Deselect ( -- )
: desel_enc _encs high ;

\ ENC Select ( -- )
: sel_enc _encs low ;

\ ENC write Byte ( c -- )
: enc_write_byte c!@spi drop ;

\ ENC read Byte ( -- c )
: enc_read_byte 0 c!@spi ;

\ ENC Registerbits setzen ( mask reg -- )
: set_mask sel_enc $1F and $80 or 
 enc_write_byte enc_write_byte desel_enc ;

\ ENC Registerbits loeschen ( mask reg -- )
: clr_mask sel_enc $1F and $A0 or
 enc_write_byte enc_write_byte desel_enc ;

\ ENC28J60 Bank umschalten ( bank -- )
: set_bank $03 $1F clr_mask $1F set_mask ;

\ ENC28J60 Register lesen ( reg -- data )
: enreg> sel_enc dup $1F and $00 or enc_write_byte 
 $80 and if 0 enc_write_byte then enc_read_byte desel_enc ;

\ ENC28J60 Register schreiben ( data reg -- )
: >enreg sel_enc $1F and $40 or 
 enc_write_byte enc_write_byte desel_enc ;

\ ENC28J60 Phyregister schreiben ( dataH dataL phyreg -- )
: >phyreg $02 set_bank $94 >enreg $96 >enreg $97 >enreg 
 $03 set_bank begin $8A enreg> 1 and 0 = until ;

\ ENC28J60 Phyregister lesen 
: phyreg> $02 set_bank $94 >enreg $01 $92 set_mask  
 $033 set_bank begin $8A enreg> 1 and 0 = until 
 $02 set_bank $01 $92 clr_mask $98 enreg> $99 enreg> ;

\ ****** ENC auf Takt warten ******
: enc_takt? begin $1D enreg> $01 and 1 = until ;

\ ****** ENC SW-Reset ******
: enc_reset sel_enc $FF enc_write_byte desel_enc 10 ms ;

\ ****** ENC Reset Phy ******
: enc_reset_phy $80 $00 $00 >phyreg begin
 $00 phyreg> swap drop 128 and 0 = until ;

\ ****** ENC Init Bank0 ******
: enc_init_bank0 $00 set_bank 
 rxstart_init next_packet_ptr !
 rxstart_init n>cc $08 >enreg $09 >enreg 
 rxstart_init n>cc $0C >enreg $0D >enreg 
 rxstop_init n>cc $06 >enreg $07 >enreg 
 txstart_init n>cc $04 >enreg $05 >enreg ;

 \ ****** ENC Init Bank1 ******
: enc_init_bank1 $01 set_bank 
 $3F $08 >enreg $30 $09 >enreg $F9 $10 >enreg $F7 $11 >enreg 
 $90 $18 set_mask $00 $18 clr_mask ;

\ ****** ENC Init Bank2 ******
: enc_init_bank2 $02 set_bank 
 $0D $80 >enreg $32 $82 set_mask $40 $83 set_mask 
 eth_max_framelen n>cc $8A >enreg $90 >enreg 
 $12 $86 >enreg $0C $87 >enreg $12 $84 >enreg ;

\ ****** ENC Init Bank3 ******
 : enc_init_bank3 $03 set_bank 
 Mymac1 $84 >enreg Mymac2 $85 >enreg Mymac3 $82 >enreg 
 Mymac4	$83 >enreg Mymac5 $80 >enreg Mymac6 $81 >enreg ;

\ ****** ENC Init Phy ******
 : enc_init_phy $08 $00 $10 >phyreg $31 $C2 $14 >phyreg 
 $00 $00 $00 >phyreg $00 set_bank 
\ $C0 $1B set_mask $1C $1B >enreg
 $C0 $1B >enreg ;

\ ENC28J60 initialisieren
: enc_init enc_takt? enc_reset enc_reset_phy
 enc_init_bank0 enc_init_bank2 enc_init_bank3 
 enc_init_bank1 enc_init_phy
 0 next_packet_ptr ! 0 packet_length ! 0 rx_stat !
 $04 $1F set_mask ;

\ liest n Bytes(spi) nach RAM an addr ( addr n -- )
\ : enc_rec 0 ?do enc_read_byte over c! 1+ loop drop ; 

: enc_rec n@spi ; 

\ schreibt n Bytes von addr RAM auf spi ( addr n -- )
\ : enc_tx 0 ?do dup c@ enc_write_byte 1+ loop drop ; 

: enc_tx n!spi ; 

\ ENC28J60 Clock Prescaler setzen ( -- )
: enc_set_clk $033 set_bank $02 $15 >enreg ;

\ ENC write Receive Pointer
: >erdpt $00 set_bank next_packet_ptr @ 
 n>cc $00 >enreg $01 >enreg ;

\ ENC28J60 Buffer lesen ( -- )
: enc_read_buf sel_enc $3A enc_write_byte 
 eth_buffer 6 enc_rec 
 eth_buffer @  next_packet_ptr !
 eth_buffer 2 + @  packet_length !
 eth_buffer 4 + @  rx_stat !
 packet_length @ 4 - dup packet_length !
 eth_buffer swap enc_rec desel_enc ;

\ ENC28J60 Buffer schreiben ( -- ) 
: write_buffer sel_enc $7A enc_write_byte 
 $00 enc_write_byte eth_buffer packet_length @ 
 enc_tx desel_enc ;

\ BANK1_EPKTCNT Statusregister auslesen ( -- n ) 
: pkt? $01 set_bank $19 enreg> ;

\ move the rx read pointer to the start of the next rx packet
: >erxrdpt next_packet_ptr @ n>cc $0C >enreg $0D >enreg ;

\ ENC28J60 Packet receive ( -- f )
: pkt> pkt? 0 > if >erdpt enc_read_buf >erxrdpt 
  $40 $1E set_mask 1 else 0 then ;

\ ENC28J60 Packet send
: >pkt write_buffer packet_length @ 
 &54 < if &54 packet_length ! then
 $00 set_bank $80 $1F set_mask $80 $1F clr_mask 
 txstart_init n>cc $02 >enreg $03 >enreg 
 packet_length @ txstart_init + n>cc $06 >enreg $07 >enreg
 $08 $1F set_mask ;
