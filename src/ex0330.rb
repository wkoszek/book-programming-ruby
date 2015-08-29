# Sample code from Programing Ruby, page 140
  pig = IO.popen("/usr/local/bin/pig", "w+")
  pig.puts "ice cream after they go to bed"
  pig.close_write
  puts pig.gets
