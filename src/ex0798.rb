# Sample code from Programing Ruby, page 434
        (1..100).grep 38..44
        c = IO.constants
        c.grep(/SEEK/)
        res = c.grep(/SEEK/) {|v| IO.const_get(v) } 
        res
