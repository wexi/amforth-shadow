.. _Structures:

==========
Structures
==========

Structures are used to keep complex data in one place. Classical
use cases are records.

To use structures, load the file :file:`lib/forth200x/structure.frt`
into the controller. It has no further dependencies.

.. code-block:: forth

 \ simple test example for forth200x structures
 \ define a new data structure named list.

 begin-structure list
   field: l.p  \ previous
   field: l.n  \ next
   field: l.d  \ data
 end-structure

 \ create an instance of the datastructure list
 \ named listroot

 list buffer: listroot

 \ access an element from the instance
 $55aa listroot l.d !

 \ place a structure at a special place
 begin-structure atmega-port
   cfield: PIN
   cfield: DDR
   cfield: PORT
 end-structure

 \ Atmegas have 3 addresses per port, use
 \ the lowest one here
 $39 constant PORT-A

 \ set all pins to output
 $ff PORT-A DDR c!


The example shows a few aspects that should be known:

* field names are global entries in the dictionary, one should
  choose good names for them. Names like :file:`a` are a no-go.
  One possibility is the schema structure-name->fieldname
* structures keep definitions in flash, the data goes to RAM.

The package works with amforth version 4.0 and newer.

.. seealso:: :ref:`Arrays`
