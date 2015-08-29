# Sample code from Programing Ruby, page 515
         class Klass
           def initialize(str)
             @str = str
           end
           def say_hello
             @str
           end
         end
         o = Klass.new("hello\n")
         data = Marshal.dump(o)
         obj = Marshal.load(data)
         obj.say_hello
