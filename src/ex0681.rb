# Sample code from Programing Ruby, page 392
  class Object
    attr_accessor :timestamp
  end
  class Class
    alias_method :old_new,  :new
    def new(*args)
      result = old_new(*args)
      result.timestamp = Time.now
      result
    end
  end
  class Test
  end
  
  obj1 = Test.new
  sleep(0.002)  #!sh!
  obj2 = Test.new

  obj1.timestamp.to_f
  obj2.timestamp.to_f
