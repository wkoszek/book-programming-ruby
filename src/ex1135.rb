# Sample code from Programing Ruby, page 536
         module A
           def A.included(mod)
             puts "#{self} included in #{mod}"
           end
         end
         module Enumerable
           include A
         end
