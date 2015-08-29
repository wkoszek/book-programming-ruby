# Sample code from Programing Ruby, page 375
  def factory(klass, *args)
    klass.new(*args)
  end

  factory(String, "Hello")
  factory(Dir,    ".")

  flag = true
  (flag ? Array : Hash)[1, 2, 3, 4]
  flag = false
  (flag ? Array : Hash)[1, 2, 3, 4]
