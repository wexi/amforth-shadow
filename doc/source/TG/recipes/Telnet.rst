.. _Telnet:

======
Telnet
======

Hardware
--------

Telnet is a TCP/IP protocol. It requires a connection to
a network (RJ45, twisted pair Ethernet is commonly used). 
A microcontroller like the Atmega needs a separate module 
to deal with all the low level stuff. For this recipe an 
ENC28J60 is used. It is connected via SPI to the Atmega. 
In addition, the interrupt line of the  enc28j60 (pin4) 
has to be connected to INT2 (pin3 on an Atmega644).

The software needs slightly more that 1KB RAM for itself
(mostly buffers), so only the bigger types satisfy this 
requirement.

Software
--------

The software is currently only available in the 
`Repository <http://sourceforge.net/p/amforth/code/HEAD/tree/trunk/>`__

Every network needs some settings. As of now, they are hard
coded into the code, so you need to change the source code for
the MAC address and the IP address in the :file:`anc28j60.frt` :

.. code-block:: forth

   \ *** own MAC address ***
   $00 constant Mymac1
   $22 constant Mymac2
   $F9 constant Mymac3
   $01 constant Mymac4
   $36 constant Mymac5
   $B6 constant Mymac6
   \ *** own IP address ***
   &192 constant Myip1
   &168 constant Myip2
   &002 constant Myip3
   &079 constant Myip4

The code assumes a /24 network for the other network settings.

Using
-----

After uploading the code base (:file:`4th_mod1.frt` includes most
of the dependencies) the serial port is still the command prompt.
With the command ``+telnet`` the network is started and the TCP
Port 23 is opened. In this stage, a network ping should work

.. code-block:: bash

   serial terminal:
   |> +telnet
   | ok
   |> Send Ping Reply ! 
   |Send Ping Reply ! 
   |Send Ping Reply ! 
   |Send Ping Reply ! 

   remote shell:
   |$ ping 192.168.10.80
   |PING 192.168.10.80 (192.168.10.80) 56(84) bytes of data.
   |64 bytes from 192.168.10.80: icmp_seq=1 ttl=64 time=1037 ms
   |64 bytes from 192.168.10.80: icmp_seq=2 ttl=64 time=75.1 ms
   |64 bytes from 192.168.10.80: icmp_seq=3 ttl=64 time=19.0 ms
   |64 bytes from 192.168.10.80: icmp_seq=4 ttl=64 time=19.0 ms
   |64 bytes from 192.168.10.80: icmp_seq=5 ttl=64 time=19.0 ms

To get a telnet session, the amforth command interpreter has
to switch its IO

.. code-block:: bash

   serial terminal:
   |> +telnet 
   | ok
   |> +tnredir

   remote shell:
   $ telnet 192.168.10.80
   |Trying 192.168.10.80...
   |Connected to 192.168.10.80.
   |Escape character is '^]'.
   |Start Telnet Server:
   | ok
   |> 1 2 + .
   |1 2 + .
   |3  ok
   |> 
   | ok
   |> : hi ." Howdy, mate!" cr ;
   |: hi ." Howdy, mate!" cr ;
   | ok
   |> 
   | ok
   |> hi
   |hi
   |Howdy, mate!
   | ok
   |> 
   | ok
   |> -tnredir
   |-tnredir

   serial terminal:
   |Stop Telnet Server !  ok
   |> hi
   |Howdy, mate!
   | ok
   |> 

