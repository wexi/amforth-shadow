\
\ process this file with amforth-upload.py and
\ the proper setting of $AMFORTH_LIB (basedir of
\ you amforth file tree)
\ WIN (untested, DOS Box)
\  cd c:\amforth-x.y
\  set AMFORTH_LIB=c:\amforth-x.y
\  python tools\amforth-upload.py -t com1: examples\run-hayes.frt
\ UNIX / MAC (Terminal)
\  cd $HOME/amforth-x.y
\  export AMFORTH_LIB=$HOME/amforth-x.y
\  tools/amforth-upload.py -t /dev/ttyUSB0 examples/run-hayes.frt
\ enjoy!
\
\ it is meant to be run on a newly flashed
\ controller, e.g. all the dict_* are included
\ 

\ include all sources 
#include ans94/core.frt
#include ans94/tester/tester-amforth.frt 
#include ans94/double.frt
#include ans94/core-ext/marker.frt
\ and finally run all the tests

#include ans94/tester/core.fr
