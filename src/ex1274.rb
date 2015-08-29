# Sample code from Programing Ruby, page 591
        print "Example one\n"
        "hello\nworld".each {|s| p s}
        print "Example two\n"
        "hello\nworld".each('l') {|s| p s}
        print "Example three\n"
        "hello\n\n\nworld".each('') {|s| p s}
