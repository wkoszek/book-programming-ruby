# Sample code from Programing Ruby, page 385
  a = 102
  b = 95
  ObjectSpace.each_object(Numeric) {|x| p x }
