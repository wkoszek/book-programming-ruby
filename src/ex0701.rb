# Sample code from Programing Ruby, page 407
        squares = Array.new(5) {|i| i*i}
        squares

        copy = Array.new(squares)      # initialized by copying
        squares[5] = 25
        squares
        copy
