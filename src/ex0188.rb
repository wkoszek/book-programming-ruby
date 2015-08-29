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
  calc = lambda {|n| n*number }
else
  calc = lambda {|n| n+number }
end
puts((1..10).collect(&calc).join(", "))
__END__
t
2
