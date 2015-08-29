# Sample code from Programing Ruby, page 77
  def meth_two(arg)
    case   #!sh!
    when arg > 0
      "positive"
    when arg < 0
      "negative"
    else
      "zero"
    end
  end

  meth_two(23)
  meth_two(0)
