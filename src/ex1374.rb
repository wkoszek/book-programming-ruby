# Sample code from Programing Ruby, page 624
        t = Time.local(2000,1,1,20,15,1)
        t.gmt?
        y = t.getgm
        y.gmt?
        t == y
