# Sample code from Programing Ruby, page 753
    require 'socket'

    SOCKET = "/tmp/sample"
    begin ; File.unlink(SOCKET) ; rescue ; end
    
    server_thread = Thread.start do      # run server in a thread
      sock = UNIXServer.open(SOCKET)
      s1 = sock.accept
      p s1.recvfrom(124)
    end
    
    client = UNIXSocket.open(SOCKET)
    client.send("hello", 0)
    client.close
    
    server_thread.join
