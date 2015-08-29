# Sample code from Programing Ruby, page 713
require 'soap/rpc/standaloneServer'

module TimeServant
  def TimeServant.now
    Time.now.to_s
  end
end

class Server < SOAP::RPC::StandaloneServer
  def on_init
    servant = TimeServant
    add_method(servant, 'now')
  end
end

if __FILE__ == $0
  svr = Server.new('Server', 
                   'http://pragprog.com/TimeServer', 
                   '0.0.0.0', 
                   12321)
  trap('INT') { svr.shutdown }
  svr.start
end
