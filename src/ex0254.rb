# Sample code from Programing Ruby, page 99
  for i in 1..100
    print "Now at #{i}. Restart? "
    retry if gets =~ /^y/i
  end
