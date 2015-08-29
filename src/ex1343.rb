# Sample code from Programing Ruby, page 614
        a = Thread.new { print "a"; Thread.stop; print "c" }
        Thread.pass
        print "b"
        a.run
        a.join
 puts        
