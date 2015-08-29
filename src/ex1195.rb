# Sample code from Programing Ruby, page 560
         def fred(param)
           lambda {}
         end

         b = fred(99)
         eval("param", b.binding)
         eval("param", b)
