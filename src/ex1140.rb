# Sample code from Programing Ruby, page 537
        module Mod
          def a()
          end
#          def a()  end
          def b()
          end
#          def b()  end
          private
          def c()
          end
#          def c()  end
          private :a
        end
        Mod.private_instance_methods
