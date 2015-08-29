# Sample code from Programing Ruby, page 534
        class A
          def fred
            puts "In Fred"
          end
          def create_method(name, &block)
            self.class.send(:define_method, name, &block)
          end
          define_method(:wilma) { puts "Charge it!" }
        end
        class B < A
          define_method(:barney, instance_method(:fred))
        end
        b = B.new
        b.barney
        b.wilma
        b.create_method(:betty) { p self }
        b.betty
