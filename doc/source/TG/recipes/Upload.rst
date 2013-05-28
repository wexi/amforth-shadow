.. _Upload:

===================================
Use of the amforth-shell.py utility
===================================

The amforth-shell.py from Keith Amidon may simplify the interaction with amforth
and the forth code management while uploading projects.

It is a python2 script that runs fine on Linux, other platforms may work as well.
The tool takes care of the correct transfer of the source code and will optionally
pre-process the sources: e.g. replace the register names with their numeric values.
This saves valuable flash (dictionary) space since most of these registers are used
only once.

.. code-block:: bash

  mt@ayla:~/amforth$ cat tools/test.frt
 \ this is a test
 INT1Addr .
 ver 1000 ms cr
 1000 ms
 ver cr ver
 1000 ms
 mt@ayla:alias|grep amforth-shell
 alias u0='$HOME/amforth/tools/amforth-shell.py -p /dev/ttyUSB0 --no-error-on-output'
 mt@ayla:~/amforth$ u0 test.frt
 |I=mcudef
 |I=using device.py for atmega1280
 |F=....test.frt
 |C|    1|\ this is a test
 |S|    2|INT1Addr .
 |O|    2|4
 |S|    3|ver 1000 ms cr
 |O|    3|amforth 4.9 ATmega1280
 |S|    4|1000 ms
 |S|    5|ver cr ver
 |O|    5|amforth 4.9 ATmega1280
 |O|    5|amforth 4.9 ATmega1280

Note the replacement of the INT1Addr with 4 in line 2. This is done by using the
device.py file from the core/devices/atmega1280p directory which is automagically
identified and loaded at startup. And second note, that the file is found automatically
in the subdirectory tools.

The amforth-shell.py utility has a lot of more features: an interactive
command prompt with dynamic command completion and command history (stored
across multiple invocations), a lot of runtime checks and so on. To enter
an interactive session, just call it with the port name

.. code-block:: bash

 mt@ayla:~/amforth$ u0 -i
 |I=Entering amforth interactive interpreter
 |I=using device.py for atmega1280
 (ATmega1280)> # (and pressing TAB twice)
 #                    #directive           #exit                #quote-char-word     #tib
 #update-cpu          #edit                #ignore-error        #s                   #timeout
 #update-words        #cd                  #error-on-output     #include             #string-start-word
 #timeout-next
 (ATmega1280)> #

Note that not all words displayed here are actual commands on the controller itself. The terminal
provides commands itself, they start with a # (hash mark).

To locate the files, the utility checks the current work directory
or, if set, the directories from the environment variable AMFORTH_LIB.
Be careful when using a directory with many files, the startup may take
a long time due to the directory tree scanning.

.. code-block:: bash

 mt@ayla:~/amforth$ grep AMFORTH ~/.profile
 AMFORTH=~/amforth
 AMFORTH_LIB=$AMFORTH/lib:$AMFORTH/examples
 export AMFORTH_LIB
 mt@ayla:~/amforth$
