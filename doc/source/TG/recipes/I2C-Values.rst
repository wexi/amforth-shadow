.. _I2C Values:

I2C VALUEs
----------

A nice feature of the VALUE concept is that the storage where
the data is actually kept is not disclosed. That makes it easy
to create a VALUE that behaves exactly like any other VALUE
and keeps the data in an external i2C eeprom.


.. code-block:: forth

   #require value.frt
   #require quotations.frt
   #require ms.frt
   #require i2c-eeprom.frt

   \ initial addr ...
   \ 17      0    i2c.value "name"
   : i2c.value ( n addr -- )
     (value)
     dup ,
     [: @i @i2c.ee ;] , 
     [: @i !i2c.ee 5 ms ;] ,
     !i2c.ee
   ; 

The #require directives are processed by the amforth-shell, of you don't use
it, comment them out and make sure that the files and their further dependencies
are sent to the controller beforhand. 

Note the 5 ms delay after writing the data. This is to make sure that the eeprom 
gets enough time to complete its internal activities.

The use is straightforward. Since there is no memory manager for the serial 
eeprom, the location of the data is given explicitly when creating the value (0).

.. code-block:: console

   (ATmega16)> $beef 0 i2c.value answer
     ok
   (ATmega16)> answer hex u.
    BEEF  ok
   (ATmega16)> $dead to answer
    ok
   (ATmega16)> answer hex u.
    DEAD  ok
   (ATmega16)>

Dont forget to initialize the I2C hardware before use (e.g. in ``turnkey``). 
The full details are in :ref:`I2C EEPROM`. Including how to change the
I2C hardware identifier of the serial eeprom (default $50).

.. seealso:: :ref:`I2C EEPROM Blocks`,:ref:`TWI`, and :ref:`Values`
