===========
First Steps
===========

The first steps require an ATmega micro controller with an
RS232 connection to an PC or a terminal like the
VT100
or similar hardware. A customization may change these requirements.

User Interface
--------------

amforth has a simple user interface. Connect your system to a serial
terminal (or a PC) and you get, after pressing the enter key, the
forth prompt :command:`>`

.. code-block:: console

    > cold
    amforth 5.0 ATmega16 8000 kHz
    > words
    nr> n>r (i!) !i @i @e !e nip not s>d up! up@ ...
    >


