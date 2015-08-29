# Sample code from Programing Ruby, page 745
        require 'socket'
        addr = Socket.pack_sockaddr_in(80, "pragprog.com")
        # Pragprog.com is 216.87.136.211
        addr.unpack("CCnC4")
