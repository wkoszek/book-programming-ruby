# Sample code from Programing Ruby, page 377
class Base
  def aMethod
    puts "Got here"
  end
  private :aMethod
end
class Derived1 < Base
  public :aMethod
end
