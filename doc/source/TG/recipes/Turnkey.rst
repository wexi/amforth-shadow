====================
Turnkey applications
====================

Turnkey application automatically execute a word upon startup.

.. code-block:: forth

 : myinit ( -- )
   \ some code 
 ;

 \ save the xt of myinit into turnkey vector (an eeprom variable)
 ' myinit is turnkey
 \ whenever quit starts myinit gets executed just
 \ before the accept/interpret loop starts

 \ disable turnkey, note that this disables the
 \ the serial terminal, you loose the prompt..
 ' noop is turnkey

Like the ``emit``-example it may be useful to execute the 
build-in ``turnkey`` code as well.

.. code-block:: forth

 variable oldturnkey
 ' turnkey defer@ oldturnkey !
 : myturnkey oldturnkey @ execute my_own_turnkey_actions ;
