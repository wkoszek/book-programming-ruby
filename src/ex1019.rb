# Sample code from Programing Ruby, page 493
        f = File.new("testfile")
        f.sysseek(-13, IO::SEEK_END)
        f.sysread(10)
