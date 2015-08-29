# Sample code from Programing Ruby, page 452
        f = File.new("out", "w")
        f.write("1234567890")
        f.close
        File.truncate("out", 5)
        File.size("out")
          File.delete("out");
