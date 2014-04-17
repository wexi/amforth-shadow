This folder contains some example codes not
related to any application.

easter.frt: calculates the date of easter. almost unmodfied version
    of Will Baden's code

fib.frt: simple benchmark. calculate a fibonacci number using
    different algorithm.

sieve.frt: not-so simple benchmark modelled after the sieve code
    of Marcel Hendrix. Uses single bits to store the is-prim flag.

run-hayes.frt: demonstrate the use of the amforth-upload.py utility 
    and the special #include syntax. The test itself is a slightly
    modified HAYES test suite

queens.frt: solves the queens problem for various size, maybe useful
  as a benchmark.

ascii.frt: prints an ascii table on screen

life.frt: Conveys game of life. Its very memory intensive, the example
   code works on an Atmega16, but a bigger one would allow larger
   worlds.

string-rec.frt: converts a " delimited string into a printable,
   compilable and postponable text object. It replaces the s" command.
