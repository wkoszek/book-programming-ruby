# Sample code from Programing Ruby, page 389
  def double(a)
    2*a
  end

  mObj = method(:double)

  [ 1, 3, 5, 7 ].collect(&mObj)
