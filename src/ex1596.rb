# Sample code from Programing Ruby, page 745
        require 'socket'
    begin ; File.unlink("/tmp/sample") ; rescue ; end
        sock = UNIXServer.open("/tmp/sample")
        addr = Socket.pack_sockaddr_un("/tmp/sample")
        addr[0,20]
