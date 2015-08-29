# Sample code from Programing Ruby, page 522
        def fred()
          puts "Hello"
        end

        alias bert fred

        m1 = method(:fred)
        m2 = method(:bert)
        m1 == m2
