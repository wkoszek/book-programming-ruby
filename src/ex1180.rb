# Sample code from Programing Ruby, page 553
        class Klass
          def hello(*args)
            "Hello " + args.join(' ')
          end
        end
        k = Klass.new
        k.send :hello, "gentle", "readers"
