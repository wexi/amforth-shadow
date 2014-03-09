\ internal EEPROM routines. They do not operate on external
\ storage

\ Ebuffer: is the EEPROM pendant to buffer: from forth200x
\ it takes the number of bytes to allocate in RAM and parses
\ SOURCE for the name to give to the buffer

\ Eallot is the EEPROM pendant for allot from the core word set
\ it allocates n bytes of EEPROM storage and return the starting
\ address.

: Eallot  edp + to edp ;
: Ebuffer: edp constant Eallot ;

\ for usage see http://amforth.sf.net/recipes/eeprom.html
