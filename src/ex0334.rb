# Sample code from Programing Ruby, page 142
  IO.popen("date") {|f| puts "Date is #{f.gets}" }
