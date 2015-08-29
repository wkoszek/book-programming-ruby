# Sample code from Programing Ruby, page 490
        f = File.new("testfile")
        f.gets
        $.
        f.lineno = 1000
        f.lineno
        $. # lineno of last read
        f.gets 
        $. # lineno of last read
