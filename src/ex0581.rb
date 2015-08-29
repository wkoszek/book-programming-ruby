# Sample code from Programing Ruby, page 332
  def mixed(a, b=99, *c)
    [ a, b, c]
  end
  mixed 1
  mixed 1, 2
  mixed 1, 2, 3
  mixed 1, 2, 3, 4
