# Sample code from Programing Ruby, page 608
         Lots = Struct.new(:a, :b, :c, :d, :e, :f)
         l = Lots.new(11, 22, 33, 44, 55, 66)
         l.values_at(1, 3, 5)
         l.values_at(0, 2, 4)
         l.values_at(-1, -3, -5)
