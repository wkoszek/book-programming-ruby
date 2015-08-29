# Sample code from Programing Ruby, page 412
          a = [ 11, 22, 33, 44 ]
          a.fetch(1)
          a.fetch(-1)
          a.fetch(-1, 'cat')
          a.fetch(4, 'cat')
          a.fetch(4) {|i| i*i }
