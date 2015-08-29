# Sample code from Programing Ruby, page 461
        File.symlink("testfile", "alink")
        File.stat("alink").symlink?
        File.lstat("alink").symlink?
      File.delete("alink")
