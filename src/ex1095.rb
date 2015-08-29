# Sample code from Programing Ruby, page 522
    def square(n)
      n*n
    end
    meth  = self.method(:square)

    meth.call(9)
    [ 1, 2, 3 ].collect(&meth)
