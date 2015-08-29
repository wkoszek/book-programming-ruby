# Sample code from Programing Ruby, page 487
        f = File.new("testfile")
        f.each {|line| puts "#{f.lineno}: #{line}" }
