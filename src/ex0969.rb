# Sample code from Programing Ruby, page 478
        h = { "a" => 100, "b" => 200, "c" => 300 }
        h.select {|k,v| k > "a"}
        h.select {|k,v| v < 200}
