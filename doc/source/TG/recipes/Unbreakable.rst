.. _Unbreakable:

===================
Unbreakable AmForth
===================

This recipe gives some hints how to
protect AmForth from being (partially)
destroyed and to be able to recover from
accidents without re-flashing the system.

Flash protection
----------------

The first line should be a flash protection. It
prevents the :command:`!i` to write to places
where it should not. This can be done by creating
a new word, that does some bounds checking and does
the final write command only if everything is ok.

.. code-block:: forth

 \ write protect everything up to this command
 : save-!i [ dp 12 + ] literal over <
   if (!i-nrww) else -20 throw then ;
 ' save-!i is !i

After these few lines, all flash up to this definition
is now write-protected. All forbidden access will generate
an exception. The offset added makes sure that our new
command protects itself as well.

The code in the NRWW section (file:`dict_appl_core.inc`)
is already write protected, the controller itself makes
sure of that. A write attempt to this locations does not
generate an exception, it will be ignored silently.

EEPROM protection
-----------------

Protect the EEPROM is more difficult. AmForth rewrites
a few cells during normal development, which makes a simple
write protection as described for the flash rather useless.
Furthermore AmForth uses the EEPROM content at very early
stages in the boot process. Any safety action needs thus be
hard-coded in :command:`warm` and it will need a trigger to
start the EEPROM recovery. This could be a check for some
data or a hardware based information.

As long as the command prompt works, the data that got saved
by a :command:`marker` definition is sufficient to reset to
a working system.
