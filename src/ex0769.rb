# Sample code from Programing Ruby, page 423
  class Demo
    def initialize(n)
      @secret = n
    end
    def get_binding
      return binding()
    end
  end

  k1 = Demo.new(99)
  b1 = k1.get_binding
  k2 = Demo.new(-3)
  b2 = k2.get_binding

  eval("@secret", b1)
  eval("@secret", b2)
  eval("@secret")
