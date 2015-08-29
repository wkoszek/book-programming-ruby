# Sample code from Programing Ruby, page 736
require 'webrick'
require 'xmlrpc/server'

xml_servlet = XMLRPC::WEBrickServlet.new
xml_servlet.add_handler("convert_celcius") do |celcius|
  celcius*1.8 + 32
end

xml_servlet.add_multicall # Add support for multicall

server = WEBrick::HTTPServer.new(:Port => 2000)
server.mount("/RPC2", xml_servlet)
trap("INT"){ server.shutdown }
server.start

