# Sample code from Programing Ruby, page 418
        def slice!(*args)
          result = self[*args]
          self[*args] = nil
          result
        end
