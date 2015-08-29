# Sample code from Programing Ruby, page 548
         module Mod
           def hello
             "Hello from Mod.\n"
           end
         end
         
         class Klass
           def hello
             "Hello from Klass.\n"
           end           
         end
         
         k = Klass.new
         k.hello
         k.extend(Mod)
         k.hello
