# Sample code from Programing Ruby, page 561
         p_proc = Proc.new {|a,b| puts "Sum is: #{a + b}" }
         p_proc.call(1,2,3)
 $stdout.flush
         p_proc = lambda {|a,b| puts "Sum is: #{a + b}" }
         p_proc.call(1,2,3)
