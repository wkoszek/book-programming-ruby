# Sample code from Programing Ruby, page 550
        class Fred
          attr_accessor :a1
          def initialize
            @iv = 3
          end
        end
        Fred.new.instance_variables
