# Sample code from Programing Ruby, page 537
        module Chatty
          def Chatty.method_undefined(id)
            puts "Undefining #{id.id2name}"
          end
          def one()   end
        end
        module Chatty
          undef_method(:one)
        end
