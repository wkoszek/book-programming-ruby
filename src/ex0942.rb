# Sample code from Programing Ruby, page 471
        h = Hash.new("Go Fish")
        h["a"] = 100
        h["b"] = 200
        h["a"]
        h["c"]
        # The following alters the single default object
        h["c"].upcase!
        h["d"]
        h.keys
