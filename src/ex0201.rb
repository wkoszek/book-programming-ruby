# Sample code from Programing Ruby, page 84
$stdin = DATA
  a = b = 1 + 2 + 3
  a
  b
  a = (b = 1 + 2) + 3
  a
  b
  File.open(name = gets.chomp)
__END__
testfile
