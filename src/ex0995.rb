# Sample code from Programing Ruby, page 487
        f = File.new("testfile")
        checksum = 0
        f.each_byte {|x| checksum ^= x }
        checksum
