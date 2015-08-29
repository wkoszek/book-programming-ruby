# Sample code from Programing Ruby, page 75
  def varargs(arg1, *rest)
    "Got #{arg1} and #{rest.join(', ')}"
  end

  varargs("one")
  varargs("one", "two")
  varargs "one", "two", "three"
