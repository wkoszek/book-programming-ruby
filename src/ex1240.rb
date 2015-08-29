# Sample code from Programing Ruby, page 580
        r1 = Regexp.new('^[a-z]+:\\s+\w+')
        r2 = Regexp.new('cat', true)
        r3 = Regexp.new('dog', Regexp::EXTENDED)
        r4 = Regexp.new(r2)
