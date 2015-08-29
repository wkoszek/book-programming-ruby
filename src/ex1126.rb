# Sample code from Programing Ruby, page 532
         module A
           def method1()
           end
#           def method1()  end
         end
         class B
           protected
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
         C.public_method_defined? "method1"
         C.public_method_defined? "method2"
         C.method_defined? "method2"
