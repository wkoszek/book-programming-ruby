# Sample code from Programing Ruby, page 494
        f = File.new("testfile")
        c = f.getc
        f.ungetc(c)
        f.getc
