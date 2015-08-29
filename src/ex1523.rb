# Sample code from Programing Ruby, page 699
require 'pty'
require 'expect'

$expect_verbose = true

PTY.spawn("ruby /usr/local/bin/irb") do |reader, writer, pid|
  reader.expect(/irb.*:0> /)
  writer.puts "'cat'.upcase"
  reader.expect("=> ")
  answer = reader.gets
  puts "Answer = #{answer}"
end                   
