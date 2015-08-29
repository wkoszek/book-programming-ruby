# Sample code from Programing Ruby, page 535
          module A
            def A.extended(obj)
              puts "#{self} extending '#{obj}'"
            end
          end
          "cat".extend(A)
