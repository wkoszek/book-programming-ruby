# Sample code from Programing Ruby, page 318
  a = [ 1, 2, 3 ]
  a.each {|i|  puts i  }  # i local to block
  a.each {|$i| puts $i }  # assigns to global $i
  a.each {|@i| puts @i }  # assigns to instance variable @i
  a.each {|I|  puts I  }  # generates warning assigning to constant
  a.each {|b.meth| }      # invokes meth= in object b
  sum = 0
  var = nil
  a.each {|var| sum += var }  # uses sum and var from enclosing scope
