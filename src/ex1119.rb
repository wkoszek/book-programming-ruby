# Sample code from Programing Ruby, page 529
         module A
           def method1()
           end
         end

         class B
           def method2()
           end
         end

         class C < B
           def method3()
           end
         end

         A.instance_methods
         B.instance_methods(false)
         C.instance_methods(false)
         C.instance_methods(true).length
