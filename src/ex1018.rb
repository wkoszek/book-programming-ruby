# Sample code from Programing Ruby, page 493
        f = File.new("testfile")
        f.sysread(16)
        str = "cat"
        f.sysread(10, str)
        str
