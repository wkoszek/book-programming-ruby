# Sample code from Programing Ruby, page 391
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
