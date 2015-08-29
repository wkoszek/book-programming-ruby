# Sample code from Programing Ruby, page 455
        File.symlink("testfile", "link2test")
        File.stat("testfile").size
        f = File.new("link2test")
        f.lstat.size
        f.stat.size
          f.close
          File.delete("link2test");
