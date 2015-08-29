# Sample code from Programing Ruby, page 616
        a = Thread.new { print "a"; sleep(10); print "b"; print "c" }
        x = Thread.new { print "x"; Thread.pass; print "y"; print "z" }
        x.join # Let x thread finish, a will be killed on exit.
      puts
