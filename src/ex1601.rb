# Sample code from Programing Ruby, page 747
        require 'socket'
        t = TCPSocket.new('localhost', 'ftp')
        data = t.recvfrom(40)
        data
        t.close
