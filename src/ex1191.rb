# Sample code from Programing Ruby, page 558
        a = 102.7
        b = 95       # Fixnum: won't be returned
        c = 12345678987654321
        count = ObjectSpace.each_object(Numeric) {|x| p x }
        puts "Total count: #{count}"
