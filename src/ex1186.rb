# Sample code from Programing Ruby, page 555
        module Chatty
          def Chatty.singleton_method_added(id)
            puts "Adding #{id.id2name} to #{self.name}"
          end
          def self.one()     end
          def two()          end
        end
        def Chatty.three() end

        obj = "cat"
        def obj.singleton_method_added(id)
          puts "Adding #{id.id2name} to #{self}"
        end
        
        def obj.speak
          puts "meow"
        end
