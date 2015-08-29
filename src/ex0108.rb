# Sample code from Programing Ruby, page 53
  def n_times(thing)
    return lambda {|n| thing * n }
  end

  p1 = n_times(23)
  p1.call(3)
  p1.call(4)
  p2 = n_times("Hello ")
  p2.call(3)
