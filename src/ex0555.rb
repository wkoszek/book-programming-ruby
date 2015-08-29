# Sample code from Programing Ruby, page 314
  def a
    print "Function 'a' called\n"
    99
  end
 
  for i in 1..2
    if i == 2
      print "a=", a, "\n"
    else
      a = 1
      print "a=", a, "\n"
    end
  end 
