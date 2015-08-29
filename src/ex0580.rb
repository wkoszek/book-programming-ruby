# Sample code from Programing Ruby, page 332
  def varargs(a, *b)
    [ a, b ]
  end
  varargs 1
  varargs 1, 2
  varargs 1, 2, 3
