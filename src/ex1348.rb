# Sample code from Programing Ruby, page 616
        y = Thread.new { 4.times { sleep 0.1; print "tick...\n" }}
        print "Waiting\n" until y.join(0.15)
