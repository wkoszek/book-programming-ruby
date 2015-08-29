# Sample code from Programing Ruby, page 344
  def meth1
    (1..10).each do |val|
      return val           # returns from method
    end
  end
  meth1
