# Sample code from Programing Ruby, page 555
        class A
           def initialize(p1)
             puts "Initializing A: p1 = #{p1}"
             @var1 = p1
           end
        end
        class B < A
          attr_reader :var1, :var2
          def initialize(p1, p2)
            super(p1)
            puts "Initializing B: p2 = #{p2}"
            @var2 = p2
          end
        end

        b = B.new("cat", "dog")
        puts b.inspect
