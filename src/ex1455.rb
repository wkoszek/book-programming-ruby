# Sample code from Programing Ruby, page 660
 File.delete("/tmp/testfile") rescue 1;
require 'ftools'

File.install('testfile', '/tmp', 0644, true)
puts "Second time..."
File.install('testfile', '/tmp', 0644, true)
puts "Done"
