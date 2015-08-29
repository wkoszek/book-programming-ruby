# Sample code from Programing Ruby, page 116
module Test
  State = {}
  def state=(value)
    State[id] = value
  end
  def state
    State[id]
  end
end

class Client
  include Test
end

c1 = Client.new
c2 = Client.new
c1.state = 'cat'
c2.state = 'dog'

c1.state
c2.state
