# Sample code from Programing Ruby, page 649
require 'drb'

class Listener
  include DRbUndumped

  def update(value)
    puts value
  end
end

DRb.start_service
counter = DRbObject.new(nil, "druby://localhost:9001")

listener = Listener.new
counter.add_observer(listener)
counter.run

