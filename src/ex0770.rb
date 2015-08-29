# Sample code from Programing Ruby, page 424
        class Top
          def Top.inherited(sub)
            puts "New subclass: #{sub}"
          end
        end

        class Middle < Top
        end

        class Bottom < Middle
        end
