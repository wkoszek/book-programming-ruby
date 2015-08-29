# Sample code from Programing Ruby, page 664
require 'gserver'

class TimeServer < GServer
  def initialize
    super(2000)
    @count = 3
  end
  def serve(client)
    client.puts Time.now.to_s
    @count -= 1
    stop if @count.zero?
  end
end

server = TimeServer.new

server.audit = true    # enable logging
server.start
server.join
