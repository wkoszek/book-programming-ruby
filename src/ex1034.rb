# Sample code from Programing Ruby, page 497
        def try
          if block_given?
            yield
          else
            "no block"
          end
        end
        try
        try { "hello" }
        try do "hello" end
