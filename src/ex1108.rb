# Sample code from Programing Ruby, page 526
          $: << "code"  
        module A
          autoload(:B, "module_b")
        end

        A::B.doit            # autoloads "module_b"
