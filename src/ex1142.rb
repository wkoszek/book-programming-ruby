# Sample code from Programing Ruby, page 539
        class Parent
          def hello
            puts "In parent"
          end
        end
        class Child < Parent
          def hello
            puts "In child"
          end
        end
        
        c = Child.new
        c.hello

        class Child
          remove_method :hello  # remove from child, still in parent 
        end
        c.hello

        class Child
          undef_method :hello   # prevent any calls to 'hello'
        end
        c.hello
