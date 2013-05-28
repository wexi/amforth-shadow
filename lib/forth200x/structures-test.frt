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
