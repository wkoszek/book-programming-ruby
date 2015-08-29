# Sample code from Programing Ruby, page 533
        module Mod
          alias_method :orig_exit, :exit
          def exit(code=0)
            puts "Exiting with code #{code}"
            orig_exit(code)
          end
        end
        include Mod
        exit(99)
