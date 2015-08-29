# Sample code from Programing Ruby, page 547
         class Klass
            attr_accessor :str
         end
         s1 = Klass.new
         s1.str = "Hello"
         s2 = s1.clone
         s2.str[1,4] = "i"
         s1.inspect
         s2.inspect
