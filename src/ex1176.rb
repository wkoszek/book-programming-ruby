# Sample code from Programing Ruby, page 551
         class Demo
           def initialize(n)
             @iv = n
           end
           def hello()
             "Hello, @iv = #{@iv}"
           end
         end
         
         k = Demo.new(99)
         m = k.method(:hello)
         m.call
         
         l = Demo.new('Fred')
         m = l.method("hello")
         m.call
