# Sample code from Programing Ruby, page 459
        File.stat("testfile").nlink
        File.link("testfile", "testfile.bak")
        File.stat("testfile").nlink
          File.delete("testfile.bak")
