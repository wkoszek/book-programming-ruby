# Sample code from Programing Ruby, page 78
  def five(a, b, c, d, e)
    "I was passed #{a} #{b} #{c} #{d} #{e}"
  end

  five(1, 2, 3, 4, 5 )
  five(1, 2, 3, *['a', 'b'])
  five(*(10..14).to_a)
