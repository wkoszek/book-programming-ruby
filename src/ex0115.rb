# Sample code from Programing Ruby, page 57
some_file = DATA
some_file.each do |line|
  v1, v2 = line.split
  print Integer(v1) + Integer(v2), " "
end
puts
__END__
3 4
5 6
7 8
