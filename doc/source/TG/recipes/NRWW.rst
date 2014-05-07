.. _NRWW:

==========
NRWW Flash
==========

Atmegas have a seperate flash region called NRWW. This area is rather small
(2 to 8 KB depending on the controller type) and has some special features.
It is primarily intended for boot loaders which can reprogram the RWW flash
without a special programmer. Amforth uses this feature to do the
dictionary management. Furthermore the NRWW section cannot self reprogram
itself. Since this space is not available for user code amforth places as 
much as possible of its predefined words there.

If an application needs code space in the NRWW section for some 
tasks, amforth has to leave room for it. This can be done by setting the
Assembler variable AMFORTH_RO_SEG to a value higher than NRWW_START_ADDR (the
default). This leaves the flash between NRWW_START_ADDR and AMFORTH_RO_SEG
free for other uses. The build process restructures the word placement 
accordingly.

Internally the files :file:`dict/nrww.inc` and :file:`dict/rww.inc`
use predefined dictionary file sets to include the essential words 
in a way to maximize the NRWW utilization. 
