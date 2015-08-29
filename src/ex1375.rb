# Sample code from Programing Ruby, page 624
        t = Time.gm(2000,1,1,20,15,1)
        t.gmt?
        l = t.getlocal
        l.gmt?
        t == l
