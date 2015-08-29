# Sample code from Programing Ruby, page 526
        module A
          autoload(:B, "module_b")
        end
        A.autoload?(:B)
        A.autoload?(:C)
