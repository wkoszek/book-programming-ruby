# Sample code from Programing Ruby, page 366
  a = "hello"
  b = a.dup
  def a.to_s
    "The value is '#{self}'"
  end
  def a.two_times
    self + self
  end
  
  a.to_s
  a.two_times
  b.to_s
