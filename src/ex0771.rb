# Sample code from Programing Ruby, page 424
        p = lambda do 
          def hello
            "Hello, Dave"
          end
        end

        FriendlyClass = Class.new(&p)
        f = FriendlyClass.new
        f.hello
