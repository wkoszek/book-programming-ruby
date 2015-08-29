# Sample code from Programing Ruby, page 417
         a = [ "a", "b", "c", "d", "e" ]
         a.slice(2) + a.slice(0) + a.slice(1)
         a.slice(6)
         a.slice(1, 2)
         a.slice(1..3)
         a.slice(4..7)
         a.slice(6..10)
         a.slice(-3, 3)
         # special cases
         a.slice(5)
         a.slice(5, 1)
         a.slice(5..10)
