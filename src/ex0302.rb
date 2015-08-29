# Sample code from Programing Ruby, page 122
File.open("testfile") do |file|
  file.each_byte {|ch| putc ch; print "." }
end
