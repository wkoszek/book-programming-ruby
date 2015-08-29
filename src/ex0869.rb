# Sample code from Programing Ruby, page 454
          f = File.new("out", "w");
          f.chmod(0644)
          f.close
          File.delete("out");
