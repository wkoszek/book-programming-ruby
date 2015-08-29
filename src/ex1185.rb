# Sample code from Programing Ruby, page 555
        class Dummy
          attr_reader :var
          def initialize
            @var = 99
          end
          def remove
            remove_instance_variable(:@var)
          end
        end
        d = Dummy.new
        d.var
        d.remove
        d.var
