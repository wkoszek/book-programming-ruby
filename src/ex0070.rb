# Sample code from Programing Ruby, page 34
class Demo
  def Demo.meth1
    # ...
  end

  def self.meth2
    # ...
  end

  class <<self
    def meth3
      # ...
    end
  end
end
