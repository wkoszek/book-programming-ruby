# Sample code from Programing Ruby, page 617
        a = Thread.new { puts "a"; Thread.stop; puts "c" }
        Thread.pass
        puts "Got here"
        a.run
        a.join
