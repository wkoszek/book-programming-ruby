# Sample code from Programing Ruby, page 478
        h = { "a" => 20, "b" => 30, "c" => 10  }
        h.sort
        h.sort {|a,b| a[1]<=>b[1]}
