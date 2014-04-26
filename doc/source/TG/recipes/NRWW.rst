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
tasks, amforth has to leave room for it. This requires some heavy
reordering of the word list includes and quite some trial and test 
iterations until everything works again. Like every customization 
in amforth, even this one does not require to change any of the 
delivered sources. Everything is under control with files in the 
application directory. The built process makes sure that files 
here take precedence over files in the source package.

It starts by defining the Symbol AMFORTH_RO_SEG inside the application 
master file to some other value than NRWW_START_ADDR. 

By doing so, the NRWW flash would overflow since the words are selected
to fit the entire section. To make room, the file dict_appl_core.inc
has to be modified.

.. code-block:: none

   .include "dict_core.inc"

   .include "words/store-e.asm"
   .include "words/fetch-e.asm"
   .include "words/store-i.asm"
   .include "words/store-i_nrww.asm"
   .include "words/fetch-i.asm"

The suggested solution is to copy the file :file:`core/dict_core.inc`
to your application directory. Now edit this file. Move all lines
starting with the line ``.include dict_core_mcu.inc`` to your
dict_appl.inc. Now you can assemble the sources and check whether 
there is room left or not. Add more words from 
:file:`core/dict/core_xk.inc` until everything 
settled. Include all words that are no longer included to your 
:file:`dict_appl.inc` file now.

At every change re-assemble the sources and fix the errors. Errors
which state that a branch is out of reach means that an assembly
primitive needs another place in the include order closer to the
desired destination. Generally the pre-assembled forth words are
location independent, they can be placed everywhere. An error
message that a label (typically an XT_-something) means that 
a word is missed. Just add it to your :file:`dict_appl.inc`
file.

The message "flash size exceeded" means that there are still too many
words in your :file:`dict_core.inc` file.
