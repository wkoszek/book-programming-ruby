# Sample code from Programing Ruby, page 630
     class Square
       def area
         @side * @side
       end
       def initialize(side)
         @side = side
       end
     end

     area_unbound = Square.instance_method(:area)

     s = Square.new(12)
     area = area_unbound.bind(s)
     area.call
