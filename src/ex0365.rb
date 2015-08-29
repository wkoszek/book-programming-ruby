# Sample code from Programing Ruby, page 171
  puts "In parent, term = #{ENV['TERM']}"
  fork do
    puts "Start of child 1, term = #{ENV['TERM']}"
    ENV['TERM'] = "ansi"
    fork do
      puts "Start of child 2, term = #{ENV['TERM']}"
    end
    Process.wait
    puts "End of child 1, term = #{ENV['TERM']}"
  end
  Process.wait
  puts "Back in parent, term = #{ENV['TERM']}"
