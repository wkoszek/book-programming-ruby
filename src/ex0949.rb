# Sample code from Programing Ruby, page 473
        h = { "a" => 100, "b" => 200 }
        h.default = "Go fish"
        h["a"]
        h["z"]
        # This doesn't do what you might hope...
        h.default = proc do |hash, key|
          hash[key] = key + key
        end
        h[2]
        h["cat"]
