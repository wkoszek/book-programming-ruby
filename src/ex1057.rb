# Sample code from Programing Ruby, page 504
         f = open("|-", "w+")
         if f.nil?
           puts "in Child"
           exit
         else
           puts "Got: #{f.gets}"
         end
