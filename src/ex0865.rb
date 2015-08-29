# Sample code from Programing Ruby, page 453
        File.utime(0, 0, "testfile")
        File.mtime("testfile")
        File.utime(0, Time.now, "testfile")
        File.mtime("testfile")
