# Sample code from Programing Ruby, page 440
         def a
           raise "boom"
         end

         def b
           a()
         end

         begin
           b()
         rescue => detail
#           print detail.backtrace.join("\n")
           print detail.backtrace.join("\n").gsub(/-:/, 'prog.rb:')
         end
