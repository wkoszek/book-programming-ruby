# Sample code from Programing Ruby, page 377
class Base
  def aMethod
    puts "Got here"
  end
  private :aMethod
end
class Derived1 < Base
  def aMethod(*args)
    super
  end
  public :aMethod
end
