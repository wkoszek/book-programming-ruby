# Sample code from Programing Ruby, page 451
          File.link("testfile", "afile")
        File.rename("afile", "afile.bak")
          File.delete("afile.bak")
