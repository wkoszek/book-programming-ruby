# Sample code from Programing Ruby, page 536
        module Chatty
          def Chatty.method_added(id)
            puts "Adding #{id.id2name}"
          end
          def one()   end
        end
        module Chatty
          def two()   end
        end
