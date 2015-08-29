# Sample code from Programing Ruby, page 614
        a = Thread.new { print "a"; Thread.pass; print "b" }
        b = Thread.new { print "x"; Thread.pass; print "y" }
        a.join; b.join
        print "\n"
