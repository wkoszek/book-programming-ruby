# Sample code from Programing Ruby, page 688
require 'socket'
require 'openssl'

socket = TCPSocket.new("www.secure-stuff.com", 443)

ssl_context = OpenSSL::SSL::SSLContext.new()

unless ssl_context.verify_mode
  warn "warning: peer certificate won't be verified this session."
  ssl_context.verify_mode = OpenSSL::SSL::VERIFY_NONE
end
sslsocket = OpenSSL::SSL::SSLSocket.new(socket, ssl_context)
sslsocket.sync_close = true
sslsocket.connect

sslsocket.puts("GET /secret-info.shtml")
while line =  sslsocket.gets
  p line
end
