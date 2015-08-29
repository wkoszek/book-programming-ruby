# Sample code from Programing Ruby, page 365
  a = "hello"
  b = a.dup
  
  class <<a
    def to_s
      "The value is '#{self}'"
    end
    def two_times
      self + self
    end
  end
