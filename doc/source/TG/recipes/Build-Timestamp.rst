===============
Build Timestamp
===============

AmForth has a version number, that can be read with an
environment query:

.. code-block:: forth

 > s" version" environment? drop .
 50 ok
 > s" version" environment search-wordlist drop .
 50 ok
 >

In addition to this information (esp for those who use the
newest revision from the source repository) the built timestamp
maybe useful as well. To get it, AmForth needs to be compiled with
the file :file:`words/built.asm` included. Calling it prints the
date and time the hexfile was generated in the current terminal.

.. code-block:: console

 > built
 Nov 22 2012 23:12:94 ok
 >

The assembly code uses some avr asm specific macros, the
string length information is hardcoded.

.. code-block:: none

 ; ( -- ) System
 ; R( -- )
 ; prints the date and time the hex file was generated
 VE_BUILT:
    .dw $ff05
    .db "built",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BUILT
 XT_BUILT:
    .dw DO_COLON
 PFA_BUILT:
    .dw XT_DOSLITERAL
    .dw 11
    .db __DATE__ ; generated from assembler
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_DOSLITERAL
    .dw 8
    .db __TIME__ ; generated from assembler
    .dw XT_ITYPE
    .dw XT_EXIT

Subversion Revision Number
--------------------------

If you are using the subversion sandbox from the sourceforge
repository, the following solution from Enoch provides the subversion
revision number.

His solutions extends the Makefile to generate a small forth
snippet that contains the information as a string.

.. code-block:: make

 AMFORTH := ../amforth/trunk
 CORE := $(AMFORTH)/core
 DEVICE := $(CORE)/devices/$(MCU)

 SVNVERSION := `svnversion -n $(AMFORTH)`

 $(TARGET).hex: $(TARGET).asm *.inc words/*.asm $(CORE)/*.asm $(CORE)/words/*.asm
 $(DEVICE)/*.asm
        $(XASM) -I $(CORE) -o $(TARGET).hex -e $(TARGET).eep -l $(TARGET).lst $(TARGET).asm
        echo ": svnversion .\" r$(SVNVERSION)\" ;" >svnversion.frt

Running make creates the file :file:`svnversion.frt` in the current directory that
contains the output of the :file:`svnversion -n` command. Uploading this
file creates the forth command _svnversion_ that prints it in
the terminal.

.. code-block:: forth

 \ #include svnversion.frt

 : myturnkey
 \ snip
    applturnkey
    space svnversion
 ;

 ' myturnkey is turnkey

 \        The result:
 \        ~~~~~~~~~~~

        amforth 4.9 AT90CAN128 r1306M


GIT Branch Name
---------------

Adding the name of the current GIT branch is slightly more complex.
The first step is creating a template file as :file:`appl/words/git-info.tmpl`
This file will be transformed into an assembly file with some search-replace
actions during this copy.

.. code-block:: none

   ; ( -- ) System
   ; R( -- )
   ; GIT Info
   VE_GITINFO:
    .dw $ff08
    .db "git-info"
    .dw VE_HEAD
    .set VE_HEAD = VE_GITINFO
   XT_GITINFO:
    .dw DO_COLON
   PFA_GITINFO:
    .dw XT_DOSLITERAL
    .dw @BRLEN@
    .db "@BRNAME@"
    .dw XT_ITYPE
    .dw XT_EXIT

The next step is to add the file :file:`words/git-info.asm` to the
list of included files (e.g. :file:`dict_appl.inc`). The final step
is to add a rule to the build tool. In this example, ant is used, so
edit the :file:`build.xml` file in the project application directory as follows:

.. code-block:: xml
   :emphasize-lines: 3

   <!-- change existing rules -->
   <target name="uno.hex"
     depends="git-info"
     description="Hexfiles for ...."/>


   <!-- add to build.xml -->
   <macrodef name="git-branch">
        <attribute name="output" />
        <sequential>

            <exec executable="git" outputproperty="branch" >
                <arg value="status"/>
                <arg value="--short"/>
                <arg value="-b"/>
                <arg value="-u"/>
                <arg value="all"/>
                <arg value="--porcelain"/>
                <env key="LANG" value="C"/>
            </exec>
            <property name="@{output}" value="${branch}"/>
        </sequential>
   </macrodef>

   <target name="git-info">
        <git-branch output="branch" />
        <length property="length" string="${branch}"/>
        <copy tofile="words/git-info.asm" file="words/git-info.tmpl" overwrite="true">
          <filterset>
            <filter token="BRLEN" value="${length}"/>
            <filter token="BRNAME" value="${branch}"/>
          </filterset>
        </copy>

    </target>

With these settings, a new command is available :command:`git-info`.
It prints the current branch name in the terminal:

.. code-block:: none

   > git-info
   ## master ok
   >

Its easy to add this command to the :command:`applturnkey` actions as well.
