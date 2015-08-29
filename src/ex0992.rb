# Sample code from Programing Ruby, page 487
        f = IO.popen("/bin/sh","r+")
        f.close_write
        f.print "nowhere"
