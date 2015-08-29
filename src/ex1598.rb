# Sample code from Programing Ruby, page 746
        require 'socket'
        addr = Socket.pack_sockaddr_in(80, "pragprog.com")
        Socket.unpack_sockaddr_in(addr)
