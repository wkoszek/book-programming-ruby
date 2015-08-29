# Sample code from Programing Ruby, page 93
    class Square; end
    class Rectangle; end
    class Circle; end
    class Triangle; end
    shape = Object.new
  case shape
  when Square, Rectangle
    # ...
  when Circle
    # ...
  when Triangle
    # ...
  else
    # ...
  end
