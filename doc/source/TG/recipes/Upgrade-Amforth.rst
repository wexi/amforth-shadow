.. _Upgrade Amforth:

===============
Upgrade AmForth
===============

You may want to upgrade AmForth  if you encounter a bug that
is fixed in a later revision or want to make use of a certain new
feature. In this recipe I assume that you use the standard
filesystem layout.

The first step is to unpack the new release archive into a
new directory. Do not try to overwrite an existing installation.
The 2nd step is a full copy of the :file:`Atmel/` directory from your
existing installation into the new tree. This copy has to include
the :file:`Appnotes*/` directories and the :file:`avrasm32.exe` file from Atmel.
These files are verbatim copies from an Atmel AVR Studio installation
and are not included into the AmForth distribution (guess why).

The next step is to make sure, that the template sample application
can be compiled without problems. If you encounter any error, fix it
first. If everything went well, you can copy your application directory
from the old tree into the new directory tree and carefully re-apply all
changes that the template application has got since you started your
own application. The major source for information is the change log on
the `AmForth Webpage <http://amforth.sf.net>`_ and the
`Source Code Repository <http://sf.net/p/amforth>`_.
