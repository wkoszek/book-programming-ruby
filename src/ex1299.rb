# Sample code from Programing Ruby, page 597
        string = "this is a string"
        string.slice!(2)
        string.slice!(3..6)
        string.slice!(/s.*t/)
        string.slice!("r")
        string
