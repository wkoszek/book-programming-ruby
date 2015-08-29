# Sample code from Programing Ruby, page 556
        module Chatty
          def Chatty.singleton_method_undefined(id)
            puts "Undefining #{id.id2name}"
          end
          def Chatty.one()   end
          class << self
             undef_method(:one)
          end
        end
