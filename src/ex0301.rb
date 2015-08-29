# Sample code from Programing Ruby, page 121
File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end
