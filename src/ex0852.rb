# Sample code from Programing Ruby, page 450
        File.symlink("testfile", "link2test")
        File.readlink("link2test")
          File.delete("link2test");
