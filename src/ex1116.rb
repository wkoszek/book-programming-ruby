# Sample code from Programing Ruby, page 528
        module A
        end

        class B
          include A
        end

        class C < B
        end

        B.include?(A)
        C.include?(A)
        A.include?(A)
