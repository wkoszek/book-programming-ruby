# Sample code from Programing Ruby, page 503
        loop do
          print "Input: "
          break if (line = gets).nil?  or (line =~ /^[qQ]/)
          # ...
        end
