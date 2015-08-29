# Sample code from Programing Ruby, page 432
        d = Dir.new("testdir")
        d.read
        i = d.tell
        d.read
        d.seek(i)
        d.read
