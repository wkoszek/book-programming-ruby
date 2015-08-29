# Sample code from Programing Ruby, page 450
        f = File.new("testfile", "r")
        f = File.new("newfile",  "w+")
        f = File.new("newfile", File::CREAT|File::TRUNC|File::RDWR, 0644)
