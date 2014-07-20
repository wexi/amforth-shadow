.. _Testing:

=======
Testing
=======

For quite some time it is a good practice to write
test cases for software for and during the development.
With them a developer can be sure that the words 
do what they are supposed to do. Forth has a long
tradition in this area starting with the ANSI standard
from 1994. John Hayes wrote a tester and defined a
test case synatx which got into widespead use since then.

Amforth has adapted its code with the file 
:file:`lib/ans94/tester-amforth.frt`. The changes from
the original are rather minor: Turn all keywords into
lowercase.

Prepare for Tests
-----------------

The tester requires only ``marker`` which is defined in
file:`lib/ans94/core/marker.frt`. There are no further
dependencies.

Using Test Cases
----------------

The tester uses 4 words:

:command:`TESTING` add your comment here
  is a "talking comment" to make the output somehow look nice.

:command:`t{`
  starts a new test. Prepare the stack and call your function, then

:command:`->`
  indicates that the test code is complete. Add the remaining stack after
  this word.

:command:`}t`
  completes the test by comparing the stack with the expected stack. If
  everything is well, the ok prompt will appear.

A test summary is not printed, but that could 

Write a file with your new library function, e.g.

.. code-block:: forth

   \ function.frt
   \ define some new function
   : plus  + ;

Then write the test cases, e.g.

.. code-block:: forth

   \ function-test.frt
  
   \ load the tester from lib/ans94/tester
   #include tester-amforth.frt
  
   \ load the code under test 
   #include function.frt
  
   \ run the tests
   TESTING the tester -----------------------------------------
  
   t{ 1 1 +    -> 2 }t
   t{ 1 1 plus -> 2 }t
   t{ 1 1 plus -> 3 }t \ incorrect
   t{ 1 2 plus -> 3 }t \ tester contiues
   t{ $FFFF 1 plus -> 0 }t
   t{ 1 2 3 4 plus -> 1 2 7 }t

Now load the file :file:`function-test.frt` to the controller and watch
the show.

.. code-block:: forth

   TESTING the tester -----------------------------------------
    ok
   > t{ 1 1 +    -> 2 }t
    ok
   > t{ 1 1 plus -> 2 }t
    ok
   > t{ 1 1 plus -> 3 }t
   INCORRECT RESULT: t{ 1 1 plus -> 3 }t
    ok
   > t{ 1 2 plus -> 3 }t
    ok
   > t{ $FFFF 1 plus -> 0 }t
    ok

With the command ``-ans-tester`` everythings gets unloaded and is ready for
the next run.

Acknowlegment
-------------

This recipe is based upon an email from Erich Wälde on the amforth-devel
mailing list.

