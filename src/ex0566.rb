# Sample code from Programing Ruby, page 317
class Top
  @@A = 1
  def dump
    puts values
  end
  def values
    "#{self.class.name}: A = #@@A"
  end
end
class MiddleOne < Top
  @@B = 2
  def values
    super + ", B = #@@B"
  end
end
class MiddleTwo < Top
  @@B = 3
  def values
    super + ", B = #@@B"
  end
end
class BottomOne < MiddleOne; end
class BottomTwo < MiddleTwo; end

Top.new.dump
MiddleOne.new.dump
MiddleTwo.new.dump
BottomOne.new.dump
BottomTwo.new.dump
