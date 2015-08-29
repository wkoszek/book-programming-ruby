# Sample code from Programing Ruby, page 537
        module Mod
          def one
            "This is one"
          end
          module_function :one
        end
        class Cls
          include Mod
          def call_one
            one
          end
        end
        Mod.one
        c = Cls.new
        c.call_one
        module Mod
          def one
            "This is the new one"
          end
        end
        Mod.one
        c.call_one
