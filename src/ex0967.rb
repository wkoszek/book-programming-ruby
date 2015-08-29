# Sample code from Programing Ruby, page 477
        a = [ "a", "b" ]
        c = [ "c", "d" ]
        h = { a => 100, c => 300 }
        h[a]
        a[0] = "z"
        h[a]
        h.rehash
        h[a]
