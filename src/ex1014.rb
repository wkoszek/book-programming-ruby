# Sample code from Programing Ruby, page 492
        f = File.new("testfile")
        f.seek(-13, IO::SEEK_END)
        f.readline
