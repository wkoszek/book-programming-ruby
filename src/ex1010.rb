# Sample code from Programing Ruby, page 491
        f = File.new("testfile")
        f.read(16)
        str = "cat"
        f.read(10, str)
        str
