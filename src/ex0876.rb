# Sample code from Programing Ruby, page 455
        f = File.new("out", "w")
        f.syswrite("1234567890")
        f.truncate(5)
        f.close()
        File.size("out")
          File.delete("out");
