# Sample code from Programing Ruby, page 432
        d = Dir.new("testdir")
        d.read
        i = d.pos
        d.read
        d.pos = i
        d.read
