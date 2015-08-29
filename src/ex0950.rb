# Sample code from Programing Ruby, page 473
        h = Hash.new {|h,k| h[k] = k*k }
        p = h.default_proc
        a = []
        p.call(a, 2)  #!sh!
        a
