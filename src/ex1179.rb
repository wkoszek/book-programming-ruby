# Sample code from Programing Ruby, page 552
         class Klass
           def my_method()
           end
         end
         k = Klass.new
         def k.single
         end
         k.methods[0..9]
         k.methods.length
         k.methods(false)
