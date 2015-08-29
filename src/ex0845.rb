# Sample code from Programing Ruby, page 449
        File.symlink("testfile", "link2test")
        File.stat("testfile").size
        File.lstat("link2test").size
        File.stat("link2test").size
          File.delete("link2test");
