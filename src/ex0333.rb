# Sample code from Programing Ruby, page 142
  trap("CLD") do
    pid = Process.wait
    puts "Child pid #{pid}: terminated"
 File.delete('output.txt')
 exit
  end

  exec("sort testfile > output.txt") if fork.nil?

  # do other stuff...
  sleep 30
