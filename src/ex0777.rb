# Sample code from Programing Ruby, page 427
    def strange
      callcc {|continuation| return continuation}
      print "Back in method, "
    end
    print "Before method. "
    continuation = strange()
    print "After method. "
    continuation.call if continuation
puts
