\ print a ascii table
: .ascii
base @
$7f $20 do
    i emit
    decimal  ." , dec: " i .
    hex      ." , hex: " i .
    8 base ! ." , oct: " i .
    2 base ! ." , bin: " i .
    cr
loop
base !
;
