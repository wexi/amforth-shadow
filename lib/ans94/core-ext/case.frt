\ From: eaker@ukulele.crd.ge.com (Chuck Eaker)
\    Subject: Re: Wanted .. CASE,OF,ENDOF,ENDCASE
\    Message-ID: <1992Nov25.164255.23225@crd.ge.com>
\    Date: 25 Nov 92 16:42:55 GMT

: case 0 ; immediate
: of  ( #of -- orig #of+1 / x -- )
    1+    ( count OFs )
    >r    ( move off the stack in case the control-flow )
	  ( stack is the data stack. )
    postpone over postpone = ( copy and test case value )
    postpone if    ( add orig to control flow stack )
    postpone drop  ( discards case value if = )
    r> ;           ( we can bring count back now )
 immediate

: endof  ( orig1 #of -- orig2 #of )
    >r    ( move off the stack in case the control-flow )
    ( stack is the data stack. )
    postpone else
    r> ;  ( we can bring count back now )
 immediate

: endcase ( orig 1..orign #of -- )
    postpone drop  ( discard case value )
    0 ?do
      postpone then
    loop ;
 immediate

 
 \ from Message-ID: <ggo2up$67k$1@news-01.bur.connect.com.au>
: range  ( selector low high -- selector x )
       2>r dup dup 2r> within
       0= if invert then ;
