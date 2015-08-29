# Sample code from Programing Ruby, page 497
        def get_binding(param)
          return binding
        end
        b = get_binding("hello")
        eval("param", b)
