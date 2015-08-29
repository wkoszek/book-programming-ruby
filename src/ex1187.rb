# Sample code from Programing Ruby, page 556
        module Chatty
          def Chatty.singleton_method_removed(id)
            puts "Removing #{id.id2name}"
          end
          def self.one()     end
          def two()          end
          def Chatty.three() end
          class <<self
            remove_method :three
            remove_method :one
          end
        end
