# Sample code from Programing Ruby, page 500
        fork { exit 99 }
        Process.wait
        puts "Child exits with status: #{$?.exitstatus}"
         begin
           exit
           puts "never get here"
         rescue SystemExit
           puts "rescued a SystemExit exception"
         end
         puts "after begin block"
