# Sample code from Programing Ruby, page 57
some_file=DATA
some_file.each do |line|
  v1, v2 = line.split    # split line on spaces
  print v1 + v2, " "
end
__END__
3 4
5 6
7 8
