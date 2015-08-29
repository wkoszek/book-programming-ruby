# Sample code from Programing Ruby, page 75
  def take_block(p1)
    if block_given?
      yield(p1)
    else
      p1
    end
  end
