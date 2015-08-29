# Sample code from Programing Ruby, page 141
if false # this doesn't work in 'code' under OSX
  pipe = IO.popen("-","w+")
  if pipe
    pipe.puts "Get a job!"
    STDERR.puts "Child says '#{pipe.gets.chomp}'"
  else
    STDERR.puts "Dad says '#{gets.chomp}'"
    puts "OK"
  end
else
  puts "Dad says 'Get a job!'"
  puts "Child says 'OK'"
end
