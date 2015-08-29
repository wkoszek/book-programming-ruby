# Sample code from Programing Ruby, page 497
         module Kernel
           alias oldc caller
           def caller(lev)
             res = oldc(lev+1)
             res.each {|l| l[0] = 'prog'; l.sub!(/\d+/) { ($&.to_i-7).to_s }}
           end
         end
         def a(skip)
           caller(skip)
         end
         def b(skip)
           a(skip)
         end
         def c(skip)
           b(skip)
         end
         c(0)
         c(1)
         c(2)
         c(3)
