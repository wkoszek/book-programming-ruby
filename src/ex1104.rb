# Sample code from Programing Ruby, page 525
       Fred = Module.new do
         def meth1
           "hello"
         end
         def meth2
           "bye"
         end
       end
       a = "my string"
       a.extend(Fred)
       a.meth1
       a.meth2
