# Sample code from Programing Ruby, page 523
        class C
          def one
          end
          def two(a)
          end
          def three(*a)
          end
          def four(a, b)
          end
          def five(a, b, *c)
          end
          def six(a, b, *c, &d)
          end
#          def one;    end
#          def two(a); end
#          def three(*a);  end
#          def four(a, b); end
#          def five(a, b, *c);    end
#          def six(a, b, *c, &d); end
        end
        c = C.new
        c.method(:one).arity
        c.method(:two).arity
        c.method(:three).arity
        c.method(:four).arity
        c.method(:five).arity
        c.method(:six).arity
