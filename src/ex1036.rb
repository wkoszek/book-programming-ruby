# Sample code from Programing Ruby, page 498
        def routine(n)
          puts n
          throw :done if n <= 0
          routine(n-1)
        end
        catch(:done) { routine(4) }
