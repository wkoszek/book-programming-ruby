# Sample code from Programing Ruby, page 487
        f = File.new("testfile")
        f.close
        f.closed?
        f = IO.popen("/bin/sh","r+")
        f.close_write
        f.closed?
        f.close_read
        f.closed?
