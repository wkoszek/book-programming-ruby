# Sample code from Programing Ruby, page 477
        h1 = { "a" => 100, "b" => 200 }
        h2 = { "b" => 254, "c" => 300 }
        h1.merge!(h2)
        h1 = { "a" => 100, "b" => 200 }
        h1.merge!(h2) {|k,o,n| o}
        h1
