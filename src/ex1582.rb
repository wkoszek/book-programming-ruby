# Sample code from Programing Ruby, page 736
require 'xmlrpc/client'

server = XMLRPC::Client.new("localhost", "/RPC2", 2000)
puts server.call("convert_celcius", 0)
puts server.call("convert_celcius", 100)

puts server.multicall(['convert_celcius', -10],
                      ['convert_celcius', 200])
