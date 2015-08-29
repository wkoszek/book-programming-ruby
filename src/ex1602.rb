# Sample code from Programing Ruby, page 748
    require 'socket'
    t = TCPSocket.new('localhost', 'ftp')
    t.gets
    t.close
