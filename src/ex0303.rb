# Sample code from Programing Ruby, page 122
File.open("testfile") do |file|
  file.each_line {|line| puts "Got #{line.dump}" }
end
