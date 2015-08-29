# Sample code from Programing Ruby, page 333
class Array
  def to_s
    inspect
  end
end
class Hash
  def to_s
    inspect
  end
end
  def regular(a, b, *c)
    # ..
  end
  regular 1, 2, 3, 4
  regular(1, 2, 3, 4)
  regular(1, *[2, 3, 4])
