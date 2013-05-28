Date: 5.4.2013

Author: 
    Matthias Trute <mtrute@users.sourceforge.net> 

Contributors:
    Erich Waelde
    Michael Kalus
    Leon Maurer
    Ullrich Hoffmann
    Karl Lund
    Enoch

License: General Public License (GPL) Version2 from 1991. See the
file LICENSE.txt or http://www.gnu.org/licenses/gpl.html

AmForth is an interactive 16bit Forth for Atmel ATmega microcontrollers.
It does not need additional hard or software. It works completely on
the controller (no cross-compiler).

AmForth uses the indirect threading forth implementation technique. 
The forth dictionary is in the flash memory, new words are compiled 
directly into flash. Since no (widely available) bootloader supports 
an API to write to flash, AmForth needs to replace it.

AmForth is implemented in assembly and forth. The code is stable 
and well tested.

All words have ans94-draft6 (CORE and various extension word sets) 
and forth 2012 stack diagrams, but not necessarily the complete 
semantics. Some words from the standards are left out, ask for them 
if you need them.

Development hardware are evaluation boards running varios atmega's
between 2 and 20 MHz with various external hardware: none,
led, push-buttons, sd-card, ethernet controller, rf module etc.

Documentation can be found in the doc/ subdirectory and
on the homepage http://amforth.sourceforge.net/.

Contact, Bugreports, Questions, Wishes etc:
    mailto:amforth-devel@lists.sourceforge.net


Post scriptum

amforth is influenced by (early versions of) avrforth from Daniel Kruszyna 
http://krue.net/avrforth/ and by the series of articles "Forth von der Pike auf" 
by Ron Minke published in the "Vierte Dimension" at http://www.forth-ev.de/
