# Sample code from Programing Ruby, page 473
        h = { "a" => 100, "b" => 200 }
        h.delete("a")
        h.delete("z")
        h.delete("z") {|el| "#{el} not found" }
