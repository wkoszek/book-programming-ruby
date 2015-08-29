# Sample code from Programing Ruby, page 410
        a = [ "a", "b", "b", "b", "c" ]
        a.delete("b")
        a
        a.delete("z")
        a.delete("z") { "not found" }
