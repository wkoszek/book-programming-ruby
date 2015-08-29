# Sample code from Programing Ruby, page 550
        class Fred
          def initialize(p1, p2)
            @a, @b = p1, p2
          end
        end
        fred = Fred.new('cat', 99)
        fred.instance_variable_set(:@a, 'dog')
        fred.inspect
