# Sample code from Programing Ruby, page 597
        a = "cruel world"
        a.scan(/\w+/) {|w| print "<<#{w}>> " }
        puts
        a.scan(/(.)(.)/) {|a,b| print b, a }
        puts
