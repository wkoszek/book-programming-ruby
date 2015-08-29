# Sample code from Programing Ruby, page 503
        def fred
          a = 1
          b = 2
          binding
        end
        freds_binding = fred
        eval("local_variables", freds_binding)
