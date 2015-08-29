# Sample code from Programing Ruby, page 473
        h = Hash.new
        h.default
        h.default(2)

        h = Hash.new("cat")
        h.default
        h.default(2)

        h = Hash.new {|h,k| h[k] = k.to_i*10}
        h.default
        h.default(2)
