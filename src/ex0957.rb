# Sample code from Programing Ruby, page 475
        h = { "a" => 100, "b" => 200 }
        h.fetch("a")
        h.fetch("z", "go fish")
        h.fetch("z") {|el| "go fish, #{el}"}
