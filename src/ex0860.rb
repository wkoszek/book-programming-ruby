# Sample code from Programing Ruby, page 452
        File.symlink("testfile", "link2test")
          File.delete("link2test");
