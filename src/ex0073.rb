# Sample code from Programing Ruby, page 35
class Shape
  def initialize(num_sides, perimeter)
    # ...
  end
  def Shape.triangle(side_length)
    Shape.new(3, side_length*3)
  end
  def Shape.square(side_length)
    Shape.new(4, side_length*4)
  end
end
