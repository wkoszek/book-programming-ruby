# Sample code from Programing Ruby, page 376
class Base
  def aMethod
    puts "Got here"
  end
  private :aMethod
end

class Derived1 < Base
  public :aMethod
end

class Derived2 < Base
end
