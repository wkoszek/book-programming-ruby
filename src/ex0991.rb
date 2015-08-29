# Sample code from Programing Ruby, page 486
        f = IO.popen("/bin/sh","r+")
        f.close_read
        f.readlines
