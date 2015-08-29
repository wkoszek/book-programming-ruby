# Sample code from Programing Ruby, page 531
         module Mod
           def method1()
           end
#           def method1()  end
           private :method1
           def method2()
           end
#           def method2()  end
         end
         Mod.instance_methods
         Mod.private_instance_methods
