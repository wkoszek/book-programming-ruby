# Sample code from Programing Ruby, page 445
          f = File.new("out", "w");
          f.close
        File.chmod(0644, "testfile", "out")
          File.delete("out");
