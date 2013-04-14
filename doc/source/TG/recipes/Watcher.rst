.. _Watcher:

=======
Watcher
=======

A Watcher is a tool that monitors the access to a memory
region. If a predefined memory location is accessed (read,
written to or both) something is done in addition. In its
simplest case, a message is printed.

The next few code lines use a single watch address. Any
access to it is trapped and calls the Debug Shell.

.. code-block:: forth

 \ core routines
 variable watch-addr
 defer watch-action
 \ redefine memory access words
 : ! dup watch-addr @ = if watch-action then ! ;
 : c@ dup watch-addr @ = if watch-action then c@ ;
 : c! dup watch-addr @ = if watch-action then c! ;
 \ this one is the last one
 : @ dup watch-addr @ = if watch-action then @ ;
 \ simply use the debugshell
 ' ?? is watch-action

 \ possible modifications
 \  use an address range
 \  use a list of addresses (address ranges)

After loading these lines, any word that uses
memory access words will be watched for access to
a particular address. If it is accessed, the debug
shell will come up for further work.
