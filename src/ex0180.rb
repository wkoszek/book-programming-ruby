# Sample code from Programing Ruby, page 77
  class S
    def some_method(a,b,c)
    end
  end
  obj = S.new
  arg2 = 1
  arg3 = 2
  a = obj.hash    # Same as
  a = obj.hash()  # this.

  obj.some_method "Arg1", arg2, arg3   # Same thing as
  obj.some_method("Arg1", arg2, arg3)  # with parentheses.
