# Sample code from Programing Ruby, page 452
        stat = File.stat("testfile")
        stat.mtime
        stat.blockdev?
        stat.ftype
