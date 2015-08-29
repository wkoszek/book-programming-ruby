# Sample code from Programing Ruby, page 87
  class Bowdlerize
    def initialize(string)
      @value = string.gsub(/[aeiou]/, '*')
    end
    def +(other)
      Bowdlerize.new(self.to_s + other.to_s)
    end
    def to_s
      @value
    end
    def inspect
      @value
    end
  end

  a = Bowdlerize.new("damn ")
  a += "shame"
