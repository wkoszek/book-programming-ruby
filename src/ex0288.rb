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
