# Sample code from Programing Ruby, page 331
  class MyClass
    def MyClass.method      # definition
    end
  end

  MyClass.method            # call
  
  obj = Object.new
  def obj.method            # definition
  end

  obj.method                # call

  def (1.class).fred        # receiver may be an expression
  end

  Fixnum.fred               # call
