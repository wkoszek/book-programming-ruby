# Sample code from Programing Ruby, page 471
        # While this creates a new default object each time
        h = Hash.new {|hash, key| hash[key] = "Go Fish: #{key}" }
        h["c"]
        h["c"].upcase!
        h["d"]
        h.keys
