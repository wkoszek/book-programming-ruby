# Sample code from Programing Ruby, page 529
         module A
           def method1()
           end
#           def method1()  end
         end
         class B
           def method2()
           end
#           def method2()  end
         end
         class C < B
           include A
           def method3()
           end
#           def method3()  end
         end

         A.method_defined? :method1
         C.method_defined? "method1"
         C.method_defined? "method2"
         C.method_defined? "method3"
         C.method_defined? "method4"
