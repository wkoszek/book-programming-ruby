# Sample code from Programing Ruby, page 536
        module Chatty
          def Chatty.method_removed(id)
            puts "Removing #{id.id2name}"
          end
          def one()   end
        end
        module Chatty
          remove_method(:one)
        end
