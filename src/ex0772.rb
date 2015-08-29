# Sample code from Programing Ruby, page 425
       class MyClass
         def MyClass.another_new(*args)
           o = allocate
           o.send(:initialize, *args)
           o
         end
         def initialize(a, b, c)
           @a, @b, @c = a, b, c
         end
       end

       mc = MyClass.another_new(4, 5, 6)
       mc.inspect
