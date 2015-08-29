# Sample code from Programing Ruby, page 747
      require 'socket'
        u = UDPSocket.new
        u.bind('localhost', 8765)
#        u.bind('localhost', 8765)
        u.addr
        BasicSocket.do_not_reverse_lookup = true
        u.addr
