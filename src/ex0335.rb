# Sample code from Programing Ruby, page 142
  fork do
    puts "In child, pid = #$$"
    exit 99
  end
  pid = Process.wait
  puts "Child terminated, pid = #{pid}, status = #{$?.exitstatus}"
