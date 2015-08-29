# Sample code from Programing Ruby, page 655
# This code might be specific to the particular
# ftp daemon. 

require 'expect'
require 'socket'

$expect_verbose = true

socket = TCPSocket.new('localhost', 'ftp')

socket.expect("ready")
socket.puts("user testuser")
socket.expect("Password required for testuser")
socket.puts("pass wibble")
#socket.puts("pass secret")
socket.expect("logged in.\r\n")
socket.puts("pwd")
puts(socket.gets)
socket.puts "quit"

