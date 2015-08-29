# Sample code from Programing Ruby, page 474
        h = { "a" => 100, "b" => 200, "c" => 300 }
        h.delete_if {|key, value| key >= "b" }
