
Ctrl-C
======

To interrupt a running system at any time and reset it to the
prompt a keyboard command ctrl-c is often used. AmForth can honor 
such a keystroke as well. To achieve it, a small code change needs 
to be applied and a new hex file pair has to be flashed to the 
controller.

The code change affects the interrupt usart handler 
(:file:`drivers/usart-rx-isr.asm`). Here add the 4 
lines 5-8:

.. code-block:: text
   :linenos:
   :emphasize-lines: 5-8

     lds xh, USART_DATA
     ; optional: check for certain character(s) (e.g. CTRL-C)
     ; and trigger a soft interrupt instead of storing the
     ; charater into the input queue.
     cpi xh, 3
     brne usart_rx_store
     jmp 0
   usart_rx_store:
     lds xl, usart_rx_in

With this change, whenever the keyboard sends the ascii code 3 
(for ctrl-c) it is catched immediatly and a soft reset is made. 
it requires that the WANT_ISR_RX option is set to 1.
