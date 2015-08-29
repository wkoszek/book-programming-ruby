# Sample code from Programing Ruby, page 479
        h = { "a" => 100, "b" => 200, "c" => 300 }
        h.values_at("a", "c")
        h.values_at("a", "c", "z")
        h.default = "cat"
        h.values_at("a", "c", "z")
