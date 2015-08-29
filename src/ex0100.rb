# Sample code from Programing Ruby, page 49
  f = File.open("testfile")
  f.each do |line|
    puts line
  end
  f.close
