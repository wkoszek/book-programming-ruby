# Sample code from Programing Ruby, page 483
        a = IO.new(2, "w")      # '2' is standard error
        STDERR.puts "Hello"
        a.puts "World"
