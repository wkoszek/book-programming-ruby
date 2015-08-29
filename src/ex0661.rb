# Sample code from Programing Ruby, page 385
  a = 102.7
  b = 95.1
  ObjectSpace.each_object(Numeric) {|x| p x }
