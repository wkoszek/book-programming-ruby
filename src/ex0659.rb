# Sample code from Programing Ruby, page 381
  # external data
  # =============

  y1 = ENV["HOME"]
  y1.tainted?
  
  y2 = y1[2, 4]
  y2.tainted?
  
  y1 =~ /([a-z])/
  $1.tainted?
