# Sample code from Programing Ruby, page 412
        a = [ "a", "b", "c", "d" ]
        a.fill("x")
        a.fill("z", 2, 2)
        a.fill("y", 0..1)
        a.fill {|i| i*i}
        a.fill(-3) {|i| i+100}
