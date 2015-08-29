# Sample code from Programing Ruby, page 97
  for i in ['fee', 'fi', 'fo', 'fum']
    print i, " "
  end
  for i in 1..3
    print i, " "
  end
  for i in File.open("ordinal").find_all {|line| line =~ /d$/}
    print i.chomp, " "
  end
puts
