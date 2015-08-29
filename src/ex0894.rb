# Sample code from Programing Ruby, page 458
        File.chmod(0644, "testfile")
        File.stat("testfile").mode.to_s(8)
