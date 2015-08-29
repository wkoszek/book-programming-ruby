# Sample code from Programing Ruby, page 330
match = while line = gets
           next if line =~ /^#/
           break line if line =~ /ruby/
         end
