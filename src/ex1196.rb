# Sample code from Programing Ruby, page 560
         a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
         a_proc.call(9, 1, 2, 3)
         a_proc[9, 1, 2, 3]
