# Sample code from Programing Ruby, page 631
        class A
          def test
            puts "In test, class = #{self.class}"
          end
        end
        class B < A
        end
        class C < B
        end

        um = B.instance_method(:test)
        bm = um.bind(C.new)
        bm.call
        bm = um.bind(B.new)
        bm.call
        bm = um.bind(A.new)
        bm.call
