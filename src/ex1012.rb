# Sample code from Programing Ruby, page 492
        f1 = File.new("testfile")
        f2 = File.new("testfile")
        f2.readlines[0]
        f2.reopen(f1)
        f2.readlines[0]
