# Sample code from Programing Ruby, page 381
  # internal data
  # =============

  x1 = "a string"
  x1.tainted?
  
  x2 = x1[2, 4]
  x2.tainted?
  
  x1 =~ /([a-z])/
  $1.tainted?
