# Sample code from Programing Ruby, page 551
#        module M;    end
        module M
        end
        class A
          include M
        end
#        class B < A; end
        class B < A
        end
#        class C < B; end
        class C < B
        end
        b = B.new
        b.instance_of? A
        b.instance_of? B
        b.instance_of? C
        b.instance_of? M
        b.kind_of? A
        b.kind_of? B
        b.kind_of? C
        b.kind_of? M
