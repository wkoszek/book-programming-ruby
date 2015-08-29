# Sample code from Programing Ruby, page 453
        File.zero?("testfile")
        File.open("zerosize", "w") {} #!sh!
        File.zero?("zerosize")
          File.unlink("zerosize")
