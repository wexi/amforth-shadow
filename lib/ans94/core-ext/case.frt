: case 0 ; immediate

: of  ( #of -- orig #of+1 / x -- )
   1+					\ count OFs
   >r					\ move off the stack in case the control-flow stack is the data stack.
   postpone ?= 				\ twisted compare
   postpone if    			\ add orig to control flow stack
   r>					\ we can bring count back now
; immediate

: endof  ( orig1 #of -- orig2 #of )
   >r
   postpone else
   r>
; immediate

: endcase  ( orig 1..orign #of -- )
   postpone drop  			\ discard case value
   0 ?do
      postpone then
   loop
; immediate
