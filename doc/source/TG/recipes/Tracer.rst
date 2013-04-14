.. _Tracer:

======
Tracer
======

Sometimes it is useful to watch a word working. A simple trace utility that
prints the name of the word and the stack content at the beginning helps to 
get important information. 

.. code-block:: forth

 \ flag to dynamically turn trace output
 \ on and off
 variable tracing?
 : trace:on -1 tracing? ! ;
 : trace:off 0 tracing? ! ;
 : tracer tracing? @ if cr itype cr .s else drop drop then ; 

 \ save the name of the word for use in tracer
 : : >in @ >r : r> >in !
    parse-name postpone sliteral postpone tracer
 ;

After loading these few lines into the controller, every word beeing
defined afterwards prints it's name and the stack content at runtime.

.. code-block:: console

 > : foo 1 ;
  ok
 > : bar 2 foo ;
   ok
 > : baz 3 bar ;
  ok
 > trace:on
  ok
 > baz
    
 baz
   
 bar
 0 2221 3 
   
 foo
 0 2219 2 
 1 2221 3 
  ok
 > .s
 0 2217 1 
 1 2219 2 
 2 2221 3 
  ok
 > trace:off
  ok
 > baz
  ok
 >

It requires amforth version 4.7 and up. (sliteral is missing in earlier
versions).

This tracer is based on posts from Emma Ledwidge and Gerry in the 
usenet group comp.lang.forth in january 2012. 
