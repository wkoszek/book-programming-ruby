# Sample code from Programing Ruby, page 79
  $stdin = DATA #$
  $stdout = File.open("/dev/null", "w")
print "(t)imes or (p)lus: "
times = gets
print "number: "
number = Integer(gets)
  $stdout = STDOUT
  print "(t)imes or (p)lus: #{times}"
  print "number: #{number}\n"

if times =~ /^t/
  puts((1..10).collect {|n| n*number }.join(", "))
else
  puts((1..10).collect {|n| n+number }.join(", "))
end
__END__
t
2
