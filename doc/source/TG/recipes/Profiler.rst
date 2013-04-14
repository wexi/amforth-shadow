.. _Profiler:

========
Profiler
========

Sometimes it is useful to watch a word working. The Tracer
gives many informations, which may be confusing or un-usable at all. The number of calls
of a given word can be more instructive. This is the time for the profiler utility. 

.. code-block:: forth

 variable profiling?
 : profile:on -1 profiling? ! ;
 : profile:off 0 profiling? ! ;

 : profiler profiling? @ if 1 swap +! else drop then ; 
 \ re-define colon
 : : :
   here 2 allot postpone literal postpone profiler
 ;

 \ get the address of the profiling data.
 : xt>prf ( xt -- addr )
  cell+ @i
 ;

After loading it into the controller, every colon word gets a counter 
(1cell) which is incremented everytime the word is called. Since this cell
can be used like any variable, it can be reset any time as well.

.. code-block:: console

 > : foo 1 ;
  ok
 > profiler:on
  ok
 > ' foo xt>prf @ .
 0 ok
 > foo
  ok
 > ' foo xt>prf @ .
 1 ok
 > 0 ' foo xt>prf !
 ok
 >
