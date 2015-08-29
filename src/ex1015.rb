# Sample code from Programing Ruby, page 492
        f = File.new("testfile")
        s = f.stat
        "%o" % s.mode
        s.blksize
        s.atime
