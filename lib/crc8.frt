\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright (c) 2013 Energy Measurement & Control, NJ, USA.
\ Software license: AmForth compliant, see http://amforth.sourceforge.net/
\
\ (crc8) is a configurable 8-bit table-driven CRC generator/checker. For usage
\ see below (*). (crc8) was adapted from Linux/lib/crc8.c, See:
\ http://lxr.free-electrons.com/source/include/linux/crc8.h
\
\ fabtab: is a factory function for arbitrary-length byte-wide Flash look-up
\ tables. Data is read from the pad.

\ #error-on-output

decimal

\ IMPORTANT:
\ amforth-shell needs the following constants defined in appl_defs.frt
\ msb-first poly: (1)11010101 = 0xD5
\ lsb-first poly: 10101011(1) = 0xAB
\ bit-order: true = msb-first, false = lsb-first
(
$d5 constant CRC8MSB
$ab constant CRC8LSB
true constant CRC8REV
)

\ verify having 256 pad bytes to form the crc table
\ #expect-output-next ^-1 0 $
s" /pad" environment? . 256 < .

\ pad bytes → flash table factory function
: fabtab: create  ( "table-name" table-byte-count -- )
   dup ,				\ table byte count
   1+ 2/ 0  do  pad i 2* + @ ,  loop	\ table words
  does>  ( table-byte-index -- table-byte )
   2dup @i U<  if
      over 2/ + 1+ @i			\ ( table-byte-index table-word )
      swap 1 and			\ ( table-word high-byte? )
      if  ><  then  255 and    		\ AVR is little endian
   else
      -9 throw				\ index out of range
   then
;

marker ->crc8

\ populate pad with crc table for CRC8MSB poly in reverse bit order
: crc8_msb_pad  ( -- )
   0 pad c!				\ "table[0] = 0"
   1 $80  begin				\ ( 2ˣ "t" ) x: 0→7
      dup $80 and  if  CRC8MSB  else  0  then	
      swap 2* xor			\ update "t"
      swap dup 0  do			\ ( "t" 2ˣ )
	 over pad i + c@ xor		\ ( "t" 2ˣ "table[j] ^ t" )
	 over pad + i + c!		\ "table[i+j] = ..."
      loop
      2* dup 256 <			\ ( "t" 2ˣ⁺¹ flag )
   while  swap				\ ( 2ˣ⁺¹ "t" )
   repeat
   2drop
;

\ populate pad with crc table for CRC8LSB poly in regular bit order
: crc8_lsb_pad  ( -- )
   0 pad c!				\ "table[0] = 0"
   128 $01  begin			\ ( 2ˣ "t") x: 7→0
      dup 1 and  if  CRC8LSB  else  0  then
      swap 2/ xor			\ update "t"
      swap 256 0  do			\ ( "t" 2ˣ )
	 over pad i + c@ xor		\ ( "t" 2ˣ "table[j] ^ t" )
	 over pad + i + c!		\ "table[i+j] = ..."
      dup 2* +loop
      2/ dup				\ ( "t" 2ˣ⁻¹ flag )
   while  swap				\ ( 2ˣ⁻¹ "t" )
   repeat
   2drop
;

\ CRC8REV  [if]  crc8_msb_pad  [else]  crc8_lsb_pad  [then]
: crc8_pad  CRC8REV  if  crc8_msb_pad  else  crc8_lsb_pad  then  ;  crc8_pad

->crc8					\ pad data is preserved

256 fabtab: crc8tb@			\ 256B pad → flash lookup table

\ (*) Using (crc8):
\ The initial crc-byte should be 255
\ To the outgoing message append the byte-complement of crc-byte'
\ The final crc-byte' of a valid incoming message+crc is: 255 crc8tb@

: (crc8)  ( crc-byte data-byte -- crc-byte' )
   xor crc8tb@
;
